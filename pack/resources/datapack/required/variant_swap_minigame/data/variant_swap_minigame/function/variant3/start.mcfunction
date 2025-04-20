execute unless entity @a[tag=variant3_player] run tag @p add variant3_player
execute unless entity @a[tag=variant3_player] as @p at @s run scoreboard players set variant3_game vs_round 0
fill -25 78 395 -22 78 403 minecraft:dirt_path replace
fill -25 79 395 -22 79 403 minecraft:air replace
setblock -26 79 399 oak_fence
function variant_swap_minigame:variant3/round_game
