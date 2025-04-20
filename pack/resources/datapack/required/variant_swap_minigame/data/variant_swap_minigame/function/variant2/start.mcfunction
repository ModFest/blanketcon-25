execute unless entity @a[tag=variant2_player] run tag @p add variant2_player
execute unless entity @a[tag=variant2_player] as @p at @s run scoreboard players set variant2_game vs_round 0
fill -25 78 405 -22 78 410 minecraft:dirt_path replace
fill -25 79 405 -22 79 410 minecraft:air replace
setblock -26 79 406 oak_fence
function variant_swap_minigame:variant2/round_game
