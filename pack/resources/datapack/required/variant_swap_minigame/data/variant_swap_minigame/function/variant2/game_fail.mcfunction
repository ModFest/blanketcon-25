setblock -26 79 406 air
title @a[tag=variant2_player,limit=1] title {"text":"Game Over!", "color":"red"}
title @a[tag=variant2_player,limit=1] subtitle {"text":"Better luck next time!", "color":"dark_red"}
playsound minecraft:entity.player.death master @a[tag=variant2_player,limit=1] ~ ~ ~ 1 1
execute as @e[name=minigame_target_variant2,limit=1] at @s run setblock ~ 79 ~ minecraft:air replace
execute as @e[name=minigame_target_variant2,limit=1] at @s run setblock ~ 78 ~ minecraft:dirt_path replace
function variant_swap_minigame:variant2/cleanup
