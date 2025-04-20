kill @e[tag=randomizer_floor_variant2,limit=1]
kill @e[tag=randomizer_block_variant2,limit=1]
summon armor_stand 12 0 0 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["randomizer_floor_variant2"]}
summon armor_stand 1.5 0 0 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["randomizer_block_variant2"]}
spreadplayers 12 0 0 12 false @e[tag=randomizer_floor_variant2,limit=1]
execute store result score variant2_game vs_tempPos run data get entity @e[tag=randomizer_floor_variant2,limit=1] Pos[0]
execute if score variant2_game vs_tempPos matches 1 run function variant_swap_minigame:variant2/setpos_1
execute if score variant2_game vs_tempPos matches 2 run function variant_swap_minigame:variant2/setpos_2
execute if score variant2_game vs_tempPos matches 3 run function variant_swap_minigame:variant2/setpos_3
execute if score variant2_game vs_tempPos matches 4 run function variant_swap_minigame:variant2/setpos_4
execute if score variant2_game vs_tempPos matches 5 run function variant_swap_minigame:variant2/setpos_5
execute if score variant2_game vs_tempPos matches 6 run function variant_swap_minigame:variant2/setpos_6
execute if score variant2_game vs_tempPos matches 7 run function variant_swap_minigame:variant2/setpos_7
execute if score variant2_game vs_tempPos matches 8 run function variant_swap_minigame:variant2/setpos_8
execute if score variant2_game vs_tempPos matches 9 run function variant_swap_minigame:variant2/setpos_9
execute if score variant2_game vs_tempPos matches 10 run function variant_swap_minigame:variant2/setpos_10
execute if score variant2_game vs_tempPos matches 11 run function variant_swap_minigame:variant2/setpos_11
execute if score variant2_game vs_tempPos matches 12 run function variant_swap_minigame:variant2/setpos_12
execute if score variant2_game vs_tempPos matches 13 run function variant_swap_minigame:variant2/setpos_13
execute if score variant2_game vs_tempPos matches 14 run function variant_swap_minigame:variant2/setpos_14
execute if score variant2_game vs_tempPos matches 15 run function variant_swap_minigame:variant2/setpos_15
execute if score variant2_game vs_tempPos matches 16 run function variant_swap_minigame:variant2/setpos_16
execute if score variant2_game vs_tempPos matches 17 run function variant_swap_minigame:variant2/setpos_17
execute if score variant2_game vs_tempPos matches 18 run function variant_swap_minigame:variant2/setpos_18
execute if score variant2_game vs_tempPos matches 19 run function variant_swap_minigame:variant2/setpos_19
execute if score variant2_game vs_tempPos matches 20 run function variant_swap_minigame:variant2/setpos_20
execute if score variant2_game vs_tempPos matches 21 run function variant_swap_minigame:variant2/setpos_21
execute if score variant2_game vs_tempPos matches 22 run function variant_swap_minigame:variant2/setpos_22
execute if score variant2_game vs_tempPos matches 23 run function variant_swap_minigame:variant2/setpos_23
execute if score variant2_game vs_tempPos matches 24 run function variant_swap_minigame:variant2/setpos_24
spreadplayers 5 0 0 5 false @e[tag=randomizer_block_variant2,limit=1]
execute store result score variant2_game vs_tempBlock run data get entity @e[tag=randomizer_block_variant2,limit=1] Pos[0]
execute if score variant2_game vs_tempBlock matches 0 run title @a[tag=variant2_player,limit=1] title {"text":"Terracotta", "color":"aqua"}
execute if score variant2_game vs_tempBlock matches 0 run title @a[tag=variant2_player,limit=1] subtitle {"text":"Place down Terracotta", "color":"gray"}
execute if score variant2_game vs_tempBlock matches 0 run playsound minecraft:block.note_block.harp master @a[tag=variant2_player,limit=1] ~ ~ ~ 1 1
execute if score variant2_game vs_tempBlock matches 0 run playsound minecraft:ui.button.click master @a[tag=variant2_player,limit=1] ~ ~ ~ 1 1
execute if score variant2_game vs_tempBlock matches 0 run playsound minecraft:entity.item.pickup master @a[tag=variant2_player,limit=1] ~ ~ ~ 1 1
execute if score variant2_game vs_tempBlock matches 1 run title @a[tag=variant2_player,limit=1] title {"text":"White Terracotta", "color":"aqua"}
execute if score variant2_game vs_tempBlock matches 1 run title @a[tag=variant2_player,limit=1] subtitle {"text":"Place down White Terracotta", "color":"gray"}
execute if score variant2_game vs_tempBlock matches 1 run playsound minecraft:block.note_block.harp master @a[tag=variant2_player,limit=1] ~ ~ ~ 1 1
execute if score variant2_game vs_tempBlock matches 1 run playsound minecraft:ui.button.click master @a[tag=variant2_player,limit=1] ~ ~ ~ 1 1
execute if score variant2_game vs_tempBlock matches 1 run playsound minecraft:entity.item.pickup master @a[tag=variant2_player,limit=1] ~ ~ ~ 1 1
execute if score variant2_game vs_tempBlock matches 2 run title @a[tag=variant2_player,limit=1] title {"text":"Light Gray Terracotta", "color":"aqua"}
execute if score variant2_game vs_tempBlock matches 2 run title @a[tag=variant2_player,limit=1] subtitle {"text":"Place down Light Gray Terracotta", "color":"gray"}
execute if score variant2_game vs_tempBlock matches 2 run playsound minecraft:block.note_block.harp master @a[tag=variant2_player,limit=1] ~ ~ ~ 1 1
execute if score variant2_game vs_tempBlock matches 2 run playsound minecraft:ui.button.click master @a[tag=variant2_player,limit=1] ~ ~ ~ 1 1
execute if score variant2_game vs_tempBlock matches 2 run playsound minecraft:entity.item.pickup master @a[tag=variant2_player,limit=1] ~ ~ ~ 1 1
execute if score variant2_game vs_tempBlock matches 3 run title @a[tag=variant2_player,limit=1] title {"text":"Gray Terracotta", "color":"aqua"}
execute if score variant2_game vs_tempBlock matches 3 run title @a[tag=variant2_player,limit=1] subtitle {"text":"Place down Gray Terracotta", "color":"gray"}
execute if score variant2_game vs_tempBlock matches 3 run playsound minecraft:block.note_block.harp master @a[tag=variant2_player,limit=1] ~ ~ ~ 1 1
execute if score variant2_game vs_tempBlock matches 3 run playsound minecraft:ui.button.click master @a[tag=variant2_player,limit=1] ~ ~ ~ 1 1
execute if score variant2_game vs_tempBlock matches 3 run playsound minecraft:entity.item.pickup master @a[tag=variant2_player,limit=1] ~ ~ ~ 1 1
execute if score variant2_game vs_tempBlock matches 4 run title @a[tag=variant2_player,limit=1] title {"text":"Black Terracotta", "color":"aqua"}
execute if score variant2_game vs_tempBlock matches 4 run title @a[tag=variant2_player,limit=1] subtitle {"text":"Place down Black Terracotta", "color":"gray"}
execute if score variant2_game vs_tempBlock matches 4 run playsound minecraft:block.note_block.harp master @a[tag=variant2_player,limit=1] ~ ~ ~ 1 1
execute if score variant2_game vs_tempBlock matches 4 run playsound minecraft:ui.button.click master @a[tag=variant2_player,limit=1] ~ ~ ~ 1 1
execute if score variant2_game vs_tempBlock matches 4 run playsound minecraft:entity.item.pickup master @a[tag=variant2_player,limit=1] ~ ~ ~ 1 1
execute if score variant2_game vs_tempBlock matches 5 run title @a[tag=variant2_player,limit=1] title {"text":"Brown Terracotta", "color":"aqua"}
execute if score variant2_game vs_tempBlock matches 5 run title @a[tag=variant2_player,limit=1] subtitle {"text":"Place down Brown Terracotta", "color":"gray"}
execute if score variant2_game vs_tempBlock matches 5 run playsound minecraft:block.note_block.harp master @a[tag=variant2_player,limit=1] ~ ~ ~ 1 1
execute if score variant2_game vs_tempBlock matches 5 run playsound minecraft:ui.button.click master @a[tag=variant2_player,limit=1] ~ ~ ~ 1 1
execute if score variant2_game vs_tempBlock matches 5 run playsound minecraft:entity.item.pickup master @a[tag=variant2_player,limit=1] ~ ~ ~ 1 1
execute if score variant2_game vs_tempBlock matches 6 run title @a[tag=variant2_player,limit=1] title {"text":"Red Terracotta", "color":"aqua"}
execute if score variant2_game vs_tempBlock matches 6 run title @a[tag=variant2_player,limit=1] subtitle {"text":"Place down Red Terracotta", "color":"gray"}
execute if score variant2_game vs_tempBlock matches 6 run playsound minecraft:block.note_block.harp master @a[tag=variant2_player,limit=1] ~ ~ ~ 1 1
execute if score variant2_game vs_tempBlock matches 6 run playsound minecraft:ui.button.click master @a[tag=variant2_player,limit=1] ~ ~ ~ 1 1
execute if score variant2_game vs_tempBlock matches 6 run playsound minecraft:entity.item.pickup master @a[tag=variant2_player,limit=1] ~ ~ ~ 1 1
execute if score variant2_game vs_tempBlock matches 7 run title @a[tag=variant2_player,limit=1] title {"text":"Orange Terracotta", "color":"aqua"}
execute if score variant2_game vs_tempBlock matches 7 run title @a[tag=variant2_player,limit=1] subtitle {"text":"Place down Orange Terracotta", "color":"gray"}
execute if score variant2_game vs_tempBlock matches 7 run playsound minecraft:block.note_block.harp master @a[tag=variant2_player,limit=1] ~ ~ ~ 1 1
execute if score variant2_game vs_tempBlock matches 7 run playsound minecraft:ui.button.click master @a[tag=variant2_player,limit=1] ~ ~ ~ 1 1
execute if score variant2_game vs_tempBlock matches 7 run playsound minecraft:entity.item.pickup master @a[tag=variant2_player,limit=1] ~ ~ ~ 1 1
execute if score variant2_game vs_tempBlock matches 8 run title @a[tag=variant2_player,limit=1] title {"text":"Yellow Terracotta", "color":"aqua"}
execute if score variant2_game vs_tempBlock matches 8 run title @a[tag=variant2_player,limit=1] subtitle {"text":"Place down Yellow Terracotta", "color":"gray"}
execute if score variant2_game vs_tempBlock matches 8 run playsound minecraft:block.note_block.harp master @a[tag=variant2_player,limit=1] ~ ~ ~ 1 1
execute if score variant2_game vs_tempBlock matches 8 run playsound minecraft:ui.button.click master @a[tag=variant2_player,limit=1] ~ ~ ~ 1 1
execute if score variant2_game vs_tempBlock matches 8 run playsound minecraft:entity.item.pickup master @a[tag=variant2_player,limit=1] ~ ~ ~ 1 1
execute if score variant2_game vs_tempBlock matches 9 run title @a[tag=variant2_player,limit=1] title {"text":"Lime Terracotta", "color":"aqua"}
execute if score variant2_game vs_tempBlock matches 9 run title @a[tag=variant2_player,limit=1] subtitle {"text":"Place down Lime Terracotta", "color":"gray"}
execute if score variant2_game vs_tempBlock matches 9 run playsound minecraft:block.note_block.harp master @a[tag=variant2_player,limit=1] ~ ~ ~ 1 1
execute if score variant2_game vs_tempBlock matches 9 run playsound minecraft:ui.button.click master @a[tag=variant2_player,limit=1] ~ ~ ~ 1 1
execute if score variant2_game vs_tempBlock matches 9 run playsound minecraft:entity.item.pickup master @a[tag=variant2_player,limit=1] ~ ~ ~ 1 1
execute if score variant2_game vs_tempBlock matches 10 run title @a[tag=variant2_player,limit=1] title {"text":"Green Terracotta", "color":"aqua"}
execute if score variant2_game vs_tempBlock matches 10 run title @a[tag=variant2_player,limit=1] subtitle {"text":"Place down Green Terracotta", "color":"gray"}
execute if score variant2_game vs_tempBlock matches 10 run playsound minecraft:block.note_block.harp master @a[tag=variant2_player,limit=1] ~ ~ ~ 1 1
execute if score variant2_game vs_tempBlock matches 10 run playsound minecraft:ui.button.click master @a[tag=variant2_player,limit=1] ~ ~ ~ 1 1
execute if score variant2_game vs_tempBlock matches 10 run playsound minecraft:entity.item.pickup master @a[tag=variant2_player,limit=1] ~ ~ ~ 1 1
execute if score variant2_game vs_tempBlock matches 11 run title @a[tag=variant2_player,limit=1] title {"text":"Cyan Terracotta", "color":"aqua"}
execute if score variant2_game vs_tempBlock matches 11 run title @a[tag=variant2_player,limit=1] subtitle {"text":"Place down Cyan Terracotta", "color":"gray"}
execute if score variant2_game vs_tempBlock matches 11 run playsound minecraft:block.note_block.harp master @a[tag=variant2_player,limit=1] ~ ~ ~ 1 1
execute if score variant2_game vs_tempBlock matches 11 run playsound minecraft:ui.button.click master @a[tag=variant2_player,limit=1] ~ ~ ~ 1 1
execute if score variant2_game vs_tempBlock matches 11 run playsound minecraft:entity.item.pickup master @a[tag=variant2_player,limit=1] ~ ~ ~ 1 1
execute if score variant2_game vs_tempBlock matches 12 run title @a[tag=variant2_player,limit=1] title {"text":"Light Blue Terracotta", "color":"aqua"}
execute if score variant2_game vs_tempBlock matches 12 run title @a[tag=variant2_player,limit=1] subtitle {"text":"Place down Light Blue Terracotta", "color":"gray"}
execute if score variant2_game vs_tempBlock matches 12 run playsound minecraft:block.note_block.harp master @a[tag=variant2_player,limit=1] ~ ~ ~ 1 1
execute if score variant2_game vs_tempBlock matches 12 run playsound minecraft:ui.button.click master @a[tag=variant2_player,limit=1] ~ ~ ~ 1 1
execute if score variant2_game vs_tempBlock matches 12 run playsound minecraft:entity.item.pickup master @a[tag=variant2_player,limit=1] ~ ~ ~ 1 1
execute if score variant2_game vs_tempBlock matches 13 run title @a[tag=variant2_player,limit=1] title {"text":"Blue Terracotta", "color":"aqua"}
execute if score variant2_game vs_tempBlock matches 13 run title @a[tag=variant2_player,limit=1] subtitle {"text":"Place down Blue Terracotta", "color":"gray"}
execute if score variant2_game vs_tempBlock matches 13 run playsound minecraft:block.note_block.harp master @a[tag=variant2_player,limit=1] ~ ~ ~ 1 1
execute if score variant2_game vs_tempBlock matches 13 run playsound minecraft:ui.button.click master @a[tag=variant2_player,limit=1] ~ ~ ~ 1 1
execute if score variant2_game vs_tempBlock matches 13 run playsound minecraft:entity.item.pickup master @a[tag=variant2_player,limit=1] ~ ~ ~ 1 1
execute if score variant2_game vs_tempBlock matches 14 run title @a[tag=variant2_player,limit=1] title {"text":"Purple Terracotta", "color":"aqua"}
execute if score variant2_game vs_tempBlock matches 14 run title @a[tag=variant2_player,limit=1] subtitle {"text":"Place down Purple Terracotta", "color":"gray"}
execute if score variant2_game vs_tempBlock matches 14 run playsound minecraft:block.note_block.harp master @a[tag=variant2_player,limit=1] ~ ~ ~ 1 1
execute if score variant2_game vs_tempBlock matches 14 run playsound minecraft:ui.button.click master @a[tag=variant2_player,limit=1] ~ ~ ~ 1 1
execute if score variant2_game vs_tempBlock matches 14 run playsound minecraft:entity.item.pickup master @a[tag=variant2_player,limit=1] ~ ~ ~ 1 1
execute if score variant2_game vs_tempBlock matches 15 run title @a[tag=variant2_player,limit=1] title {"text":"Magenta Terracotta", "color":"aqua"}
execute if score variant2_game vs_tempBlock matches 15 run title @a[tag=variant2_player,limit=1] subtitle {"text":"Place down Magenta Terracotta", "color":"gray"}
execute if score variant2_game vs_tempBlock matches 15 run playsound minecraft:block.note_block.harp master @a[tag=variant2_player,limit=1] ~ ~ ~ 1 1
execute if score variant2_game vs_tempBlock matches 15 run playsound minecraft:ui.button.click master @a[tag=variant2_player,limit=1] ~ ~ ~ 1 1
execute if score variant2_game vs_tempBlock matches 15 run playsound minecraft:entity.item.pickup master @a[tag=variant2_player,limit=1] ~ ~ ~ 1 1
execute if score variant2_game vs_tempBlock matches 16 run title @a[tag=variant2_player,limit=1] title {"text":"Pink Terracotta", "color":"aqua"}
execute if score variant2_game vs_tempBlock matches 16 run title @a[tag=variant2_player,limit=1] subtitle {"text":"Place down Pink Terracotta", "color":"gray"}
execute if score variant2_game vs_tempBlock matches 16 run playsound minecraft:block.note_block.harp master @a[tag=variant2_player,limit=1] ~ ~ ~ 1 1
execute if score variant2_game vs_tempBlock matches 16 run playsound minecraft:ui.button.click master @a[tag=variant2_player,limit=1] ~ ~ ~ 1 1
execute if score variant2_game vs_tempBlock matches 16 run playsound minecraft:entity.item.pickup master @a[tag=variant2_player,limit=1] ~ ~ ~ 1 1
function variant_swap_minigame:variant2/cooldown_3
schedule function variant_swap_minigame:variant2/check 60t
