#!/usr/bin/env python3
import json
import os
import shutil
import subprocess
import sys
import tempfile
from pathlib import Path
from typing import Any

import requests

import assemble_packwiz
import common
from common import Ansi

FABRIC_INSTALLER_VERSION = "1.0.1"
PACKWIZ_BOOTSTRAP_VERSION = "v0.0.3" # https://github.com/packwiz/packwiz-installer-bootstrap
MC_TEST_INJECTOR_VERSION = "v1.0.0" # https://github.com/TheEpicBlock/mc-test-injector

def main():
    repo_root = common.get_repo_root()
    java = common.check_java()
    pack = common.get_generated_dir() / "pack"
    pack_toml_file = pack / "pack.toml"
    test_server_working = Path(common.env("WORK_DIR", default=(repo_root / "run")))

    # Run the pack assembly script
    assemble_packwiz.main()

    if not pack.exists():
        print(f"{pack} does not exist")
        raise Exception("Error, couldn't find pack. assemble_packwiz.py might've failed")
    if not pack_toml_file.exists():
        print(f"{pack_toml_file} does not exist")
        raise Exception("Pack is not a valid packwiz pack (pack.toml) doesn't exist")

    # Parse pack information

    pack_info = common.parse_packwiz(pack_toml_file)

    print(f"Testing modpack {pack_info.name} {pack_info.pack_version}")

    mc_version = pack_info.minecraft_version
    loader = pack_info.loader
    loader_version = pack_info.loader_version

    print(f"Setting up a {loader} {loader_version} server for {mc_version}")

    # Various run dirs and files
    # This is the cache for things that don't change very often
    static_cache_dir = test_server_working / "cache-static"
    cache_state_file = static_cache_dir / "cache_state.json" # Info about the cache
    cached_server_dir = static_cache_dir / "server" # Dir containing the server jar and libraries
    cached_packwiz_dir = static_cache_dir / "packwiz" # Dir containing packwiz installer and packwiz bootstrap
    cached_injector_dir = static_cache_dir / "mc-test-injector" # Dir where mc-test-injector will be downloaded to

    # This is the cache that does change quite often (eg, whenever the mods change)
    # These are all managed by external programs, so they don't need a state file
    dynamic_cache_dir = test_server_working / "cache-dynamic"
    cached_pack_dir = dynamic_cache_dir / "pack" # Dir containing an instance of the pack
    runtime_cache = dynamic_cache_dir / "runtime" # Dirs which are known to contain caches maintained by the server (e.g .fabric)
    exec_dir = test_server_working / "exec" # Where the server will end up running

    cached_server_dir.mkdir(exist_ok=True, parents=True)
    cached_pack_dir.mkdir(exist_ok=True, parents=True)
    cached_packwiz_dir.mkdir(exist_ok=True, parents=True)
    cached_injector_dir.mkdir(exist_ok=True, parents=True)
    runtime_cache.mkdir(exist_ok=True, parents=True)
    exec_dir.mkdir(exist_ok=True, parents=True)

    # Generate the desired cache state so we can compare it
    desired_cache_state = {
        "server": common.hash([mc_version, loader, loader_version]),
        "pw_bootstrap": PACKWIZ_BOOTSTRAP_VERSION,
        "mc-test-injector": MC_TEST_INJECTOR_VERSION
    }
    if common.env("GENERATE_DESIRED_CACHE_STATE_AND_EXIT") == "true":
        save_cache_state(desired_cache_state, test_server_working / "desired_cache_state_for_static_cache.json")
        sys.exit()
        return

    # Read the file describing the state of the current cache
    if cache_state_file.exists():
        try:
            cached_state = json.loads(common.read_file(cache_state_file))
        except Exception:
            print(f"Failed to load cache state, ignoring it")
            cached_state = {}
    else:
        cached_state = {}

    # Make sure we have an install of the server files
    server_hash = desired_cache_state["server"]
    if server_hash != cached_state.get("server"):
        print("Existing cached server files are stale. Deleting it.")
        shutil.rmtree(cached_server_dir)
        shutil.rmtree(runtime_cache)
        cached_state["server"] = None
        save_cache_state(cached_state, cache_state_file) # Don't forget to immediatly save any changes to the state
    elif err := validate_server(loader, cached_server_dir):
        print(f"{Ansi.WARN}Something is wrong with the cached server:{Ansi.RESET} {err}")
        print("Removing cached server files")
        shutil.rmtree(cached_server_dir)
        shutil.rmtree(runtime_cache)
        cached_state["server"] = None
        save_cache_state(cached_state, cache_state_file) # Don't forget to immediatly save any changes to the state

    if cached_state.get("server") == None:
        # Set up new server files
        setup_server(java, mc_version, loader, loader_version, cached_server_dir)
        # Update cache state to reflect the newly installed server files
        cached_state["server"] = server_hash
        save_cache_state(cached_state, cache_state_file)
    else:
        print(f"Cache hit: a {mc_version} server using {loader} {loader_version} is in the cache")

    # Make sure we have an install of packwiz
    bootstrap_version = desired_cache_state["pw_bootstrap"]
    if bootstrap_version != cached_state.get("pw_bootstrap"):
        print("Installed packwiz bootstrap is stale. Deleting it.")
        shutil.rmtree(cached_packwiz_dir)
        cached_state["pw_bootstrap"] = None
        save_cache_state(cached_state, cache_state_file)
    elif err := validate_packwiz(cached_packwiz_dir):
        print(f"{Ansi.WARN}Something is wrong with the cached packwiz installer or bootstrap:{Ansi.RESET} {err}")
        shutil.rmtree(cached_packwiz_dir)
        cached_state["pw_bootstrap"] = None
        save_cache_state(cached_state, cache_state_file)

    if cached_state.get("pw_bootstrap") == None:
        # Set up new server files
        setup_packwiz_bootstrap(java, bootstrap_version, cached_packwiz_dir)
        # Update cache state to reflect the newly installed packwiz
        cached_state["pw_bootstrap"] = bootstrap_version
        save_cache_state(cached_state, cache_state_file)
    else:
        print(f"Cache hit: packwiz bootstrap {bootstrap_version} is in the cache")

    # Make sure we have an install of mc test injector
    injector_version = desired_cache_state["mc-test-injector"]
    if injector_version != cached_state.get("mc-test-injector"):
        print("Installed mc-test-injector is stale. Deleting it.")
        shutil.rmtree(cached_injector_dir)
        cached_state["mc-test-injector"] = None
        save_cache_state(cached_state, cache_state_file)
    elif err := validate_test_injector(cached_injector_dir):
        print(f"{Ansi.WARN}Something is wrong with the cached mc-test-injector:{Ansi.RESET} {err}")
        shutil.rmtree(cached_injector_dir)
        cached_state["mc-test-injector"] = None
        save_cache_state(cached_state, cache_state_file)

    if cached_state.get("mc-test-injector") == None:
        # Set up new server files
        setup_mc_test_injector(java, injector_version, cached_injector_dir)
        # Update cache state to reflect the newly installed mc-test-injector
        cached_state["mc-test-injector"] = injector_version
        save_cache_state(cached_state, cache_state_file)
    else:
        print(f"Cache hit: mc-test-injector {injector_version} is in the cache")

    # Update the pack dir;
    # it should have all the files in the pack downloaded
    # packwiz should take care of keeping this synchronized
    packwiz_bootstrap = cached_packwiz_dir / "packwiz_bootstrap.jar"
    print(f"Invoking packwiz installer to synchronize {cached_pack_dir.relative_to(repo_root)}")
    subprocess.run([
        java, "-jar", packwiz_bootstrap,
        "--no-gui",
        # Ensures bootstrap installs packwiz to `packwiz_dir` for caching reasons
        "--bootstrap-main-jar", cached_packwiz_dir / "packwiz-installer.jar",
        "--pack-folder", cached_pack_dir,
        "-s", "server", # Tell packwiz to install only server files
        f"file://{pack_toml_file}"
    ])

    # Symlink the cached server files and cached pack files
    shutil.rmtree(exec_dir)
    exec_dir.mkdir(parents=True)
    for f in cached_server_dir.iterdir():
        os.symlink(f, exec_dir / (f.relative_to(cached_server_dir)), target_is_directory=f.is_dir())
    if loader == "neoforge":
        for f in cached_pack_dir.rglob("*"):
            if f.is_file():
                # We do *not* symlink entire directories. Instead we symlink individual files.
                # This is because NeoForge doesn't like it.
                # Also, it helps prevents stuff from accidentally modifying our cache, so that's nice
                dest = exec_dir / (f.relative_to(cached_pack_dir))
                dest.parent.mkdir(exist_ok=True, parents=True)
                os.symlink(f, dest, target_is_directory=False)
        dotconnector = runtime_cache / ".connector"
        dotconnector.mkdir(exist_ok=True, parents=True)
        os.symlink(dotconnector, exec_dir / "mods" / ".connector", target_is_directory=True)
    else:
        for f in cached_pack_dir.iterdir():
            os.symlink(f, exec_dir / (f.relative_to(cached_pack_dir)), target_is_directory=f.is_dir())

    dotfabric = runtime_cache / ".fabric"
    dotfabric.mkdir(exist_ok=True, parents=True)
    os.symlink(dotfabric, exec_dir / ".fabric", target_is_directory=True)
	#
    # dotconnector = runtime_cache / ".connector"
    # dotconnector.mkdir(exist_ok=True, parents=True)
    # os.symlink(dotconnector, exec_dir / "mods" / ".connector", target_is_directory=True)
    
    # Accept eula
    eula = exec_dir / "eula.txt"
    if not eula.exists():
        eula.touch()
        with open(eula, "w") as file:
            file.write("eula=true")

    # Setup mc-test-injector
    test_injector = cached_injector_dir / "McTestInjector.jar"

    # Clear any lingering crash reports
    crashreport_dir = exec_dir / "crash-reports"
    if crashreport_dir.exists():
        shutil.rmtree(crashreport_dir)

    # Run the server
    test_injector = Path(test_injector).resolve()
    java_args = [f"-javaagent:{test_injector}"]
    mc_args = ["--nogui"]

    sys.stdout.flush() # Prevents python's output from appearing after mc's
    os.chdir(exec_dir)
    result = run_server(exec_dir, java, loader, java_args, mc_args, timeout=240)

    if result.returncode != 0:
        print(f"! Minecraft returned status code {result.returncode}")
        sys.exit(1)
    else:
        print(f"Minecraft exited with status code 0")

    if crashreport_dir.exists() and len(list(crashreport_dir.iterdir())) > 0:
        print(f"! Found files in the crash-reports directory. Marking test as failed")
        sys.exit(2)

def save_cache_state(state, file):
    # This is nice to store, for if we ever make breaking changes
    state["script_version"] = 1
    with open(file, "w") as f:
        f.write(json.dumps(state, sort_keys=True))

def setup_server(java, mc_version, loader, loader_version, directory):
    """Install the server files and libraries for a given version. The given directory should be empty"""
    directory.mkdir(exist_ok=True, parents=True)
    with tempfile.TemporaryDirectory() as installer_tmp:
        installer = Path(installer_tmp) / "installer.jar"

        # Download and run the appropriate installer
        if loader == "fabric":
            print(f"Downloading {loader}-installer {FABRIC_INSTALLER_VERSION} to {installer}")
            with open(installer, "wb") as f:
                f.write(requests.get(f"https://maven.fabricmc.net/net/fabricmc/fabric-installer/{FABRIC_INSTALLER_VERSION}/fabric-installer-{FABRIC_INSTALLER_VERSION}.jar").content)
            subprocess.run([java, "-jar", installer,
                "server",
                "-dir", directory,
                "-mcversion", mc_version,
                "-loader", loader_version,
                "-downloadMinecraft" # Makes fabric install the server jar as well
            ])
        elif loader == "neoforge":
            print(f"Downloading {loader} installer for {loader_version} to {installer}")
            with open(installer, "wb") as f:
                f.write(requests.get(f"https://maven.neoforged.net/releases/net/neoforged/neoforge/{loader_version}/neoforge-{loader_version}-installer.jar").content)
            # NeoForge installers are always meant for a certain neoforge and minecraft version
            subprocess.run([java, "-jar", installer, "--install-server", directory])
        else:
            raise RuntimeError(f"Unknown loader {loader}, can't install server files")
    # Validate result
    if err := validate_server(loader, directory):
        raise RuntimeError(f"Failed to install server files: {err}")

def validate_server(loader, server_dir) -> str | None:
    if loader == "fabric" and not (server_dir / "fabric-server-launch.jar").exists():
        return "Fabric servers should have a fabric-server-launch.jar"
    if loader == "neoforge" and not (server_dir / "user_jvm_args.txt").exists():
        # This is the behaviour as of NeoForge 21.1.64
        return "NeoForge should set up a user_jvm_args.txt file. Did the way neoforge servers are set up change?"
    if not (server_dir / "libraries").exists():
        return "The server directory should have a libraries folder"
    return None

def setup_packwiz_bootstrap(java, bootstrap_version, directory):
    print(f"Downloading packwiz bootstrap {bootstrap_version}")
    directory.mkdir(exist_ok=True, parents=True)
    with open(directory / "packwiz_bootstrap.jar", "wb") as f:
        f.write(requests.get(f"https://github.com/packwiz/packwiz-installer-bootstrap/releases/download/{bootstrap_version}/packwiz-installer-bootstrap.jar").content)

def validate_packwiz(packwiz_dir) -> str | None:
    if not (packwiz_dir / "packwiz_bootstrap.jar").exists():
        return "packwiz_bootstrap.jar should exist"
    return None

def setup_mc_test_injector(java, injector_version, directory):
    print(f"Downloading mc-test-injector {injector_version}")
    directory.mkdir(exist_ok=True, parents=True)
    unprefixed = injector_version
    if unprefixed.startswith("v"):
        unprefixed = unprefixed[1:]
    with open(directory / "McTestInjector.jar", "wb") as f:
        f.write(requests.get(f"https://github.com/TheEpicBlock/mc-test-injector/releases/download/{injector_version}/McTestInjector-{unprefixed}.jar").content)

def validate_test_injector(packwiz_dir) -> str | None:
    if not (packwiz_dir / "McTestInjector.jar").exists():
        return "McTestInjector.jar should exist"
    return None

def run_server(exec_dir, java, loader, java_args, mc_args, **kwargs) -> subprocess.CompletedProcess[Any]:
    if loader == "fabric":
        return subprocess.run([java] + java_args + ["-jar", exec_dir / "fabric-server-launch.jar"] + mc_args, **kwargs)
    elif loader == "neoforge":
        env = {}
        # Pass the jdk options as an env variable
        if len(java_args) > 0:
            env["JDK_JAVA_OPTIONS"] = " ".join(java_args)

        # Set env to use the right java
        path = os.environ["PATH"] if "PATH" in os.environ else ""
        if os.name == "nt":
            env["PATH"] = f"{java.parent};{path}"
        else:
            env["PATH"] = f"{java.parent}:{path}"

        # Run the bash file
        bash_file = "run.bat" if os.name == "nt" else "run.sh"
        return subprocess.run([exec_dir / bash_file] + mc_args, env=env, **kwargs)
    else:
        raise RuntimeError(f"Unknown loader {loader}, can't run server")

if __name__ == "__main__":
    main()
