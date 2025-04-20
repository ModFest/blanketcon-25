setblock -26 79 399 air
title @a[tag=variant3_player,limit=1] title {"text":"Success!", "color":"green"}
title @a[tag=variant3_player,limit=1] subtitle {"text":"You placed all blocks correctly!", "color":"aqua"}
playsound minecraft:entity.player.levelup master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
playsound minecraft:ui.toast.challenge_complete master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
scoreboard players add @a[tag=variant3_player,limit=1] vs_wins 1
execute if score @a[tag=variant3_player,limit=1] vs_v3 matches 0 run scoreboard players set @a[tag=variant3_player,limit=1] vs_v3 1
function variant_swap_minigame:variant3/cleanup
