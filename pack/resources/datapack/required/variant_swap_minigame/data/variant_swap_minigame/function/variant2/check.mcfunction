scoreboard players set variant2_game vs_successFlag 0
execute as @e[name=minigame_target_variant2,limit=1] at @s run execute if score variant2_game vs_tempBlock matches 0 if block ~ 79 ~ terracotta run scoreboard players set variant2_game vs_successFlag 1
execute as @e[name=minigame_target_variant2,limit=1] at @s run execute if score variant2_game vs_tempBlock matches 1 if block ~ 79 ~ white_terracotta run scoreboard players set variant2_game vs_successFlag 1
execute as @e[name=minigame_target_variant2,limit=1] at @s run execute if score variant2_game vs_tempBlock matches 2 if block ~ 79 ~ light_gray_terracotta run scoreboard players set variant2_game vs_successFlag 1
execute as @e[name=minigame_target_variant2,limit=1] at @s run execute if score variant2_game vs_tempBlock matches 3 if block ~ 79 ~ gray_terracotta run scoreboard players set variant2_game vs_successFlag 1
execute as @e[name=minigame_target_variant2,limit=1] at @s run execute if score variant2_game vs_tempBlock matches 4 if block ~ 79 ~ black_terracotta run scoreboard players set variant2_game vs_successFlag 1
execute as @e[name=minigame_target_variant2,limit=1] at @s run execute if score variant2_game vs_tempBlock matches 5 if block ~ 79 ~ brown_terracotta run scoreboard players set variant2_game vs_successFlag 1
execute as @e[name=minigame_target_variant2,limit=1] at @s run execute if score variant2_game vs_tempBlock matches 6 if block ~ 79 ~ red_terracotta run scoreboard players set variant2_game vs_successFlag 1
execute as @e[name=minigame_target_variant2,limit=1] at @s run execute if score variant2_game vs_tempBlock matches 7 if block ~ 79 ~ orange_terracotta run scoreboard players set variant2_game vs_successFlag 1
execute as @e[name=minigame_target_variant2,limit=1] at @s run execute if score variant2_game vs_tempBlock matches 8 if block ~ 79 ~ yellow_terracotta run scoreboard players set variant2_game vs_successFlag 1
execute as @e[name=minigame_target_variant2,limit=1] at @s run execute if score variant2_game vs_tempBlock matches 9 if block ~ 79 ~ lime_terracotta run scoreboard players set variant2_game vs_successFlag 1
execute as @e[name=minigame_target_variant2,limit=1] at @s run execute if score variant2_game vs_tempBlock matches 10 if block ~ 79 ~ green_terracotta run scoreboard players set variant2_game vs_successFlag 1
execute as @e[name=minigame_target_variant2,limit=1] at @s run execute if score variant2_game vs_tempBlock matches 11 if block ~ 79 ~ cyan_terracotta run scoreboard players set variant2_game vs_successFlag 1
execute as @e[name=minigame_target_variant2,limit=1] at @s run execute if score variant2_game vs_tempBlock matches 12 if block ~ 79 ~ light_blue_terracotta run scoreboard players set variant2_game vs_successFlag 1
execute as @e[name=minigame_target_variant2,limit=1] at @s run execute if score variant2_game vs_tempBlock matches 13 if block ~ 79 ~ blue_terracotta run scoreboard players set variant2_game vs_successFlag 1
execute as @e[name=minigame_target_variant2,limit=1] at @s run execute if score variant2_game vs_tempBlock matches 14 if block ~ 79 ~ purple_terracotta run scoreboard players set variant2_game vs_successFlag 1
execute as @e[name=minigame_target_variant2,limit=1] at @s run execute if score variant2_game vs_tempBlock matches 15 if block ~ 79 ~ magenta_terracotta run scoreboard players set variant2_game vs_successFlag 1
execute as @e[name=minigame_target_variant2,limit=1] at @s run execute if score variant2_game vs_tempBlock matches 16 if block ~ 79 ~ pink_terracotta run scoreboard players set variant2_game vs_successFlag 1
execute if score variant2_game vs_successFlag matches 1 run function variant_swap_minigame:variant2/success_round
execute if score variant2_game vs_successFlag matches 0 run function variant_swap_minigame:variant2/game_fail
