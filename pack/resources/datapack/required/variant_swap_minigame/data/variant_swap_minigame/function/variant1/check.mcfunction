scoreboard players set variant1_game vs_successFlag 0
execute as @e[name=minigame_target_variant1,limit=1] at @s run execute if score variant1_game vs_tempBlock matches 0 if block ~ 79 ~ oak_planks run scoreboard players set variant1_game vs_successFlag 1
execute as @e[name=minigame_target_variant1,limit=1] at @s run execute if score variant1_game vs_tempBlock matches 1 if block ~ 79 ~ spruce_planks run scoreboard players set variant1_game vs_successFlag 1
execute as @e[name=minigame_target_variant1,limit=1] at @s run execute if score variant1_game vs_tempBlock matches 2 if block ~ 79 ~ birch_planks run scoreboard players set variant1_game vs_successFlag 1
execute as @e[name=minigame_target_variant1,limit=1] at @s run execute if score variant1_game vs_tempBlock matches 3 if block ~ 79 ~ jungle_planks run scoreboard players set variant1_game vs_successFlag 1
execute as @e[name=minigame_target_variant1,limit=1] at @s run execute if score variant1_game vs_tempBlock matches 4 if block ~ 79 ~ acacia_planks run scoreboard players set variant1_game vs_successFlag 1
execute as @e[name=minigame_target_variant1,limit=1] at @s run execute if score variant1_game vs_tempBlock matches 5 if block ~ 79 ~ dark_oak_planks run scoreboard players set variant1_game vs_successFlag 1
execute as @e[name=minigame_target_variant1,limit=1] at @s run execute if score variant1_game vs_tempBlock matches 6 if block ~ 79 ~ mangrove_planks run scoreboard players set variant1_game vs_successFlag 1
execute as @e[name=minigame_target_variant1,limit=1] at @s run execute if score variant1_game vs_tempBlock matches 7 if block ~ 79 ~ cherry_planks run scoreboard players set variant1_game vs_successFlag 1
execute as @e[name=minigame_target_variant1,limit=1] at @s run execute if score variant1_game vs_tempBlock matches 8 if block ~ 79 ~ bamboo_planks run scoreboard players set variant1_game vs_successFlag 1
execute as @e[name=minigame_target_variant1,limit=1] at @s run execute if score variant1_game vs_tempBlock matches 9 if block ~ 79 ~ crimson_planks run scoreboard players set variant1_game vs_successFlag 1
execute as @e[name=minigame_target_variant1,limit=1] at @s run execute if score variant1_game vs_tempBlock matches 10 if block ~ 79 ~ warped_planks run scoreboard players set variant1_game vs_successFlag 1
execute if score variant1_game vs_successFlag matches 1 run function variant_swap_minigame:variant1/success_round
execute if score variant1_game vs_successFlag matches 0 run function variant_swap_minigame:variant1/game_fail
