execute unless entity @a[tag=variant1_player] run tag @p add variant1_player
execute unless entity @a[tag=variant1_player] as @p at @s run scoreboard players set variant1_game vs_round 0
fill -25 78 425 -22 78 430 minecraft:dirt_path replace
fill -25 79 425 -22 79 430 minecraft:air replace
setblock -26 79 426 oak_fence
function variant_swap_minigame:variant1/round_game
