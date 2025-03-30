#!/usr/bin/env python3
from collections import defaultdict
import json
import os
import re
import shutil
import subprocess
from typing import Any, TypeAlias, TypedDict

import common
import tomli_w


def main():
	repo_root = common.get_repo_root()
	submission_lock_file = repo_root / "submissions-lock.json"
	source_pack = repo_root / "pack"
	dest_pack = common.get_generated_dir() / "pack"
	exclude_file = repo_root / "platform.ignore"
	packwiz = common.check_packwiz()

	common.fix_packwiz_pack(source_pack / "pack.toml")

	if dest_pack.exists():
		shutil.rmtree(dest_pack)
	shutil.copytree(source_pack, dest_pack)
	common.fix_packwiz_pack(dest_pack / "pack.toml")

	exclusions = list(filter(lambda l : len(l) > 0, [re.sub("#.*", "", l.strip()) for l in common.read_file(exclude_file).split("\n")]))
	used_exclusions = []

	priorities: dict[str, int] = defaultdict(lambda: -1)
	files: dict[str, Any] = {}
	locked_data: SubmissionLockfileFormat = json.loads(common.read_file(submission_lock_file))
	for platformid, moddata in locked_data.items():
		if not "files" in moddata:
			raise RuntimeError(f"lock data for {platformid} is invalid. Does not contain file key")
		
		if platformid in exclusions:
			used_exclusions.append(platformid)
			print(f"skipping submission {platformid}")
			continue

		for filename, filedata in moddata["files"].items():
			if filename in exclusions:
				used_exclusions.append(filename)
				print(f"skipping file {filename}")
				continue
			
			# For if multiple submissions have the same file
			priority = 0
			if platformid in filename:
				priority += 50

			if priorities[filename] <= priority:
				priorities[filename] = priority
				files[filename] = filedata
	for filename, filedata in files.items():
		dst_file = dest_pack / filename
		if not dst_file.exists():
			dst_file.parent.mkdir(parents=True, exist_ok=True)
			# We want all mods to be on both sides for singleplayer compat
			filedata["side"] = "both"
			with open(dst_file, "w", encoding="utf8") as f:
				f.write(tomli_w.dumps(filedata))

	for e in exclusions:
		if not e in used_exclusions:
			raise Exception(f"{e} was given as an exclusion, but is not a submission id. It's also not a file name of a `.pw.toml` included in any submission. Was it a typo?")

	os.chdir(dest_pack)
	subprocess.run([packwiz, "refresh", "--build"])

if __name__ == "__main__":
	main()

# For type hints
class SubmissionLockfileEntry(TypedDict):
	url: str 
	files: dict[str, Any]
SubmissionLockfileFormat: TypeAlias = dict[str, SubmissionLockfileEntry]
