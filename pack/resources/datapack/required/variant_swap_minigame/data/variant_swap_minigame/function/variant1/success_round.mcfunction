execute as @e[name=minigame_target_variant1,limit=1] at @s run setblock ~ 79 ~ minecraft:air replace
execute as @e[name=minigame_target_variant1,limit=1] at @s run setblock ~ 78 ~ minecraft:dirt_path replace
scoreboard players add variant1_game vs_round 1
execute if score variant1_game vs_round matches 6 run function variant_swap_minigame:variant1/game_success
execute if score variant1_game vs_round matches ..5 run schedule function variant_swap_minigame:variant1/round_game 100t
