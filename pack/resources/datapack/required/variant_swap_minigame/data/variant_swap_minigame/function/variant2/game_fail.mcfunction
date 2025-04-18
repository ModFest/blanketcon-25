setblock -26 79 406 air
title @p title {"text":"Game Over!", "color":"red"}
title @p subtitle {"text":"Better luck next time!", "color":"dark_red"}
playsound minecraft:entity.player.death master @p ~ ~ ~ 1 1
execute as @e[name=minigame_target,limit=1] at @s run setblock ~ 79 ~ minecraft:air replace
execute as @e[name=minigame_target,limit=1] at @s run setblock ~ 78 ~ minecraft:dirt_path replace
function variant_swap_minigame:variant2/cleanup
