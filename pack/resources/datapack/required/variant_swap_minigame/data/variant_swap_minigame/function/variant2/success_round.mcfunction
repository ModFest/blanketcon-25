execute as @e[name=minigame_target,limit=1] at @s run setblock ~ 79 ~ minecraft:air replace
execute as @e[name=minigame_target,limit=1] at @s run setblock ~ 78 ~ minecraft:dirt_path replace
scoreboard players add minigame vs_round 1
execute if score minigame vs_round matches 6 run function variant_swap_minigame:variant2/game_success
execute if score minigame vs_round matches ..5 run schedule function variant_swap_minigame:variant2/round_game 60t
