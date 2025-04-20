kill @e[tag=randomizer_floor_variant3,limit=1]
kill @e[tag=randomizer_block_variant3,limit=1]
summon armor_stand 12 0 0 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["randomizer_floor_variant3"]}
summon armor_stand 1.5 0 0 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["randomizer_block_variant3"]}
spreadplayers 12 0 0 12 false @e[tag=randomizer_floor_variant3,limit=1]
execute store result score variant3_game vs_tempPos run data get entity @e[tag=randomizer_floor_variant3,limit=1] Pos[0]
execute if score variant3_game vs_tempPos matches 1 run function variant_swap_minigame:variant3/setpos_1
execute if score variant3_game vs_tempPos matches 2 run function variant_swap_minigame:variant3/setpos_2
execute if score variant3_game vs_tempPos matches 3 run function variant_swap_minigame:variant3/setpos_3
execute if score variant3_game vs_tempPos matches 4 run function variant_swap_minigame:variant3/setpos_4
execute if score variant3_game vs_tempPos matches 5 run function variant_swap_minigame:variant3/setpos_5
execute if score variant3_game vs_tempPos matches 6 run function variant_swap_minigame:variant3/setpos_6
execute if score variant3_game vs_tempPos matches 7 run function variant_swap_minigame:variant3/setpos_7
execute if score variant3_game vs_tempPos matches 8 run function variant_swap_minigame:variant3/setpos_8
execute if score variant3_game vs_tempPos matches 9 run function variant_swap_minigame:variant3/setpos_9
execute if score variant3_game vs_tempPos matches 10 run function variant_swap_minigame:variant3/setpos_10
execute if score variant3_game vs_tempPos matches 11 run function variant_swap_minigame:variant3/setpos_11
execute if score variant3_game vs_tempPos matches 12 run function variant_swap_minigame:variant3/setpos_12
execute if score variant3_game vs_tempPos matches 13 run function variant_swap_minigame:variant3/setpos_13
execute if score variant3_game vs_tempPos matches 14 run function variant_swap_minigame:variant3/setpos_14
execute if score variant3_game vs_tempPos matches 15 run function variant_swap_minigame:variant3/setpos_15
execute if score variant3_game vs_tempPos matches 16 run function variant_swap_minigame:variant3/setpos_16
execute if score variant3_game vs_tempPos matches 17 run function variant_swap_minigame:variant3/setpos_17
execute if score variant3_game vs_tempPos matches 18 run function variant_swap_minigame:variant3/setpos_18
execute if score variant3_game vs_tempPos matches 19 run function variant_swap_minigame:variant3/setpos_19
execute if score variant3_game vs_tempPos matches 20 run function variant_swap_minigame:variant3/setpos_20
execute if score variant3_game vs_tempPos matches 21 run function variant_swap_minigame:variant3/setpos_21
execute if score variant3_game vs_tempPos matches 22 run function variant_swap_minigame:variant3/setpos_22
execute if score variant3_game vs_tempPos matches 23 run function variant_swap_minigame:variant3/setpos_23
execute if score variant3_game vs_tempPos matches 24 run function variant_swap_minigame:variant3/setpos_24
execute if score variant3_game vs_tempPos matches 25 run function variant_swap_minigame:variant3/setpos_25
execute if score variant3_game vs_tempPos matches 26 run function variant_swap_minigame:variant3/setpos_26
execute if score variant3_game vs_tempPos matches 27 run function variant_swap_minigame:variant3/setpos_27
execute if score variant3_game vs_tempPos matches 28 run function variant_swap_minigame:variant3/setpos_28
execute if score variant3_game vs_tempPos matches 29 run function variant_swap_minigame:variant3/setpos_29
execute if score variant3_game vs_tempPos matches 30 run function variant_swap_minigame:variant3/setpos_30
execute if score variant3_game vs_tempPos matches 31 run function variant_swap_minigame:variant3/setpos_31
execute if score variant3_game vs_tempPos matches 32 run function variant_swap_minigame:variant3/setpos_32
execute if score variant3_game vs_tempPos matches 33 run function variant_swap_minigame:variant3/setpos_33
execute if score variant3_game vs_tempPos matches 34 run function variant_swap_minigame:variant3/setpos_34
execute if score variant3_game vs_tempPos matches 35 run function variant_swap_minigame:variant3/setpos_35
execute if score variant3_game vs_tempPos matches 36 run function variant_swap_minigame:variant3/setpos_36
spreadplayers 5 0 0 5 false @e[tag=randomizer_block_variant3,limit=1]
execute store result score variant3_game vs_tempBlock run data get entity @e[tag=randomizer_block_variant3,limit=1] Pos[0]
execute if score variant3_game vs_tempBlock matches 0 run title @a[tag=variant3_player,limit=1] title {"text":"Glass", "color":"yellow"}
execute if score variant3_game vs_tempBlock matches 0 run title @a[tag=variant3_player,limit=1] subtitle {"text":"Place down Glass", "color":"gray"}
execute if score variant3_game vs_tempBlock matches 0 run playsound minecraft:block.note_block.harp master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
execute if score variant3_game vs_tempBlock matches 0 run playsound minecraft:ui.button.click master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
execute if score variant3_game vs_tempBlock matches 0 run playsound minecraft:entity.item.pickup master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
execute if score variant3_game vs_tempBlock matches 1 run title @a[tag=variant3_player,limit=1] title {"text":"White Stained Glass", "color":"yellow"}
execute if score variant3_game vs_tempBlock matches 1 run title @a[tag=variant3_player,limit=1] subtitle {"text":"Place down White Stained Glass", "color":"gray"}
execute if score variant3_game vs_tempBlock matches 1 run playsound minecraft:block.note_block.harp master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
execute if score variant3_game vs_tempBlock matches 1 run playsound minecraft:ui.button.click master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
execute if score variant3_game vs_tempBlock matches 1 run playsound minecraft:entity.item.pickup master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
execute if score variant3_game vs_tempBlock matches 2 run title @a[tag=variant3_player,limit=1] title {"text":"Light Gray Stained Glass", "color":"yellow"}
execute if score variant3_game vs_tempBlock matches 2 run title @a[tag=variant3_player,limit=1] subtitle {"text":"Place down Light Gray Stained Glass", "color":"gray"}
execute if score variant3_game vs_tempBlock matches 2 run playsound minecraft:block.note_block.harp master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
execute if score variant3_game vs_tempBlock matches 2 run playsound minecraft:ui.button.click master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
execute if score variant3_game vs_tempBlock matches 2 run playsound minecraft:entity.item.pickup master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
execute if score variant3_game vs_tempBlock matches 3 run title @a[tag=variant3_player,limit=1] title {"text":"Gray Stained Glass", "color":"yellow"}
execute if score variant3_game vs_tempBlock matches 3 run title @a[tag=variant3_player,limit=1] subtitle {"text":"Place down Gray Stained Glass", "color":"gray"}
execute if score variant3_game vs_tempBlock matches 3 run playsound minecraft:block.note_block.harp master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
execute if score variant3_game vs_tempBlock matches 3 run playsound minecraft:ui.button.click master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
execute if score variant3_game vs_tempBlock matches 3 run playsound minecraft:entity.item.pickup master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
execute if score variant3_game vs_tempBlock matches 4 run title @a[tag=variant3_player,limit=1] title {"text":"Black Stained Glass", "color":"yellow"}
execute if score variant3_game vs_tempBlock matches 4 run title @a[tag=variant3_player,limit=1] subtitle {"text":"Place down Black Stained Glass", "color":"gray"}
execute if score variant3_game vs_tempBlock matches 4 run playsound minecraft:block.note_block.harp master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
execute if score variant3_game vs_tempBlock matches 4 run playsound minecraft:ui.button.click master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
execute if score variant3_game vs_tempBlock matches 4 run playsound minecraft:entity.item.pickup master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
execute if score variant3_game vs_tempBlock matches 5 run title @a[tag=variant3_player,limit=1] title {"text":"Brown Stained Glass", "color":"yellow"}
execute if score variant3_game vs_tempBlock matches 5 run title @a[tag=variant3_player,limit=1] subtitle {"text":"Place down Brown Stained Glass", "color":"gray"}
execute if score variant3_game vs_tempBlock matches 5 run playsound minecraft:block.note_block.harp master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
execute if score variant3_game vs_tempBlock matches 5 run playsound minecraft:ui.button.click master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
execute if score variant3_game vs_tempBlock matches 5 run playsound minecraft:entity.item.pickup master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
execute if score variant3_game vs_tempBlock matches 6 run title @a[tag=variant3_player,limit=1] title {"text":"Red Stained Glass", "color":"yellow"}
execute if score variant3_game vs_tempBlock matches 6 run title @a[tag=variant3_player,limit=1] subtitle {"text":"Place down Red Stained Glass", "color":"gray"}
execute if score variant3_game vs_tempBlock matches 6 run playsound minecraft:block.note_block.harp master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
execute if score variant3_game vs_tempBlock matches 6 run playsound minecraft:ui.button.click master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
execute if score variant3_game vs_tempBlock matches 6 run playsound minecraft:entity.item.pickup master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
execute if score variant3_game vs_tempBlock matches 7 run title @a[tag=variant3_player,limit=1] title {"text":"Orange Stained Glass", "color":"yellow"}
execute if score variant3_game vs_tempBlock matches 7 run title @a[tag=variant3_player,limit=1] subtitle {"text":"Place down Orange Stained Glass", "color":"gray"}
execute if score variant3_game vs_tempBlock matches 7 run playsound minecraft:block.note_block.harp master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
execute if score variant3_game vs_tempBlock matches 7 run playsound minecraft:ui.button.click master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
execute if score variant3_game vs_tempBlock matches 7 run playsound minecraft:entity.item.pickup master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
execute if score variant3_game vs_tempBlock matches 8 run title @a[tag=variant3_player,limit=1] title {"text":"Yellow Stained Glass", "color":"yellow"}
execute if score variant3_game vs_tempBlock matches 8 run title @a[tag=variant3_player,limit=1] subtitle {"text":"Place down Yellow Stained Glass", "color":"gray"}
execute if score variant3_game vs_tempBlock matches 8 run playsound minecraft:block.note_block.harp master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
execute if score variant3_game vs_tempBlock matches 8 run playsound minecraft:ui.button.click master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
execute if score variant3_game vs_tempBlock matches 8 run playsound minecraft:entity.item.pickup master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
execute if score variant3_game vs_tempBlock matches 9 run title @a[tag=variant3_player,limit=1] title {"text":"Lime Stained Glass", "color":"yellow"}
execute if score variant3_game vs_tempBlock matches 9 run title @a[tag=variant3_player,limit=1] subtitle {"text":"Place down Lime Stained Glass", "color":"gray"}
execute if score variant3_game vs_tempBlock matches 9 run playsound minecraft:block.note_block.harp master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
execute if score variant3_game vs_tempBlock matches 9 run playsound minecraft:ui.button.click master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
execute if score variant3_game vs_tempBlock matches 9 run playsound minecraft:entity.item.pickup master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
execute if score variant3_game vs_tempBlock matches 10 run title @a[tag=variant3_player,limit=1] title {"text":"Green Stained Glass", "color":"yellow"}
execute if score variant3_game vs_tempBlock matches 10 run title @a[tag=variant3_player,limit=1] subtitle {"text":"Place down Green Stained Glass", "color":"gray"}
execute if score variant3_game vs_tempBlock matches 10 run playsound minecraft:block.note_block.harp master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
execute if score variant3_game vs_tempBlock matches 10 run playsound minecraft:ui.button.click master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
execute if score variant3_game vs_tempBlock matches 10 run playsound minecraft:entity.item.pickup master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
execute if score variant3_game vs_tempBlock matches 11 run title @a[tag=variant3_player,limit=1] title {"text":"Cyan Stained Glass", "color":"yellow"}
execute if score variant3_game vs_tempBlock matches 11 run title @a[tag=variant3_player,limit=1] subtitle {"text":"Place down Cyan Stained Glass", "color":"gray"}
execute if score variant3_game vs_tempBlock matches 11 run playsound minecraft:block.note_block.harp master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
execute if score variant3_game vs_tempBlock matches 11 run playsound minecraft:ui.button.click master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
execute if score variant3_game vs_tempBlock matches 11 run playsound minecraft:entity.item.pickup master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
execute if score variant3_game vs_tempBlock matches 12 run title @a[tag=variant3_player,limit=1] title {"text":"Light Blue Stained Glass", "color":"yellow"}
execute if score variant3_game vs_tempBlock matches 12 run title @a[tag=variant3_player,limit=1] subtitle {"text":"Place down Light Blue Stained Glass", "color":"gray"}
execute if score variant3_game vs_tempBlock matches 12 run playsound minecraft:block.note_block.harp master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
execute if score variant3_game vs_tempBlock matches 12 run playsound minecraft:ui.button.click master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
execute if score variant3_game vs_tempBlock matches 12 run playsound minecraft:entity.item.pickup master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
execute if score variant3_game vs_tempBlock matches 13 run title @a[tag=variant3_player,limit=1] title {"text":"Blue Stained Glass", "color":"yellow"}
execute if score variant3_game vs_tempBlock matches 13 run title @a[tag=variant3_player,limit=1] subtitle {"text":"Place down Blue Stained Glass", "color":"gray"}
execute if score variant3_game vs_tempBlock matches 13 run playsound minecraft:block.note_block.harp master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
execute if score variant3_game vs_tempBlock matches 13 run playsound minecraft:ui.button.click master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
execute if score variant3_game vs_tempBlock matches 13 run playsound minecraft:entity.item.pickup master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
execute if score variant3_game vs_tempBlock matches 14 run title @a[tag=variant3_player,limit=1] title {"text":"Purple Stained Glass", "color":"yellow"}
execute if score variant3_game vs_tempBlock matches 14 run title @a[tag=variant3_player,limit=1] subtitle {"text":"Place down Purple Stained Glass", "color":"gray"}
execute if score variant3_game vs_tempBlock matches 14 run playsound minecraft:block.note_block.harp master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
execute if score variant3_game vs_tempBlock matches 14 run playsound minecraft:ui.button.click master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
execute if score variant3_game vs_tempBlock matches 14 run playsound minecraft:entity.item.pickup master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
execute if score variant3_game vs_tempBlock matches 15 run title @a[tag=variant3_player,limit=1] title {"text":"Magenta Stained Glass", "color":"yellow"}
execute if score variant3_game vs_tempBlock matches 15 run title @a[tag=variant3_player,limit=1] subtitle {"text":"Place down Magenta Stained Glass", "color":"gray"}
execute if score variant3_game vs_tempBlock matches 15 run playsound minecraft:block.note_block.harp master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
execute if score variant3_game vs_tempBlock matches 15 run playsound minecraft:ui.button.click master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
execute if score variant3_game vs_tempBlock matches 15 run playsound minecraft:entity.item.pickup master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
execute if score variant3_game vs_tempBlock matches 16 run title @a[tag=variant3_player,limit=1] title {"text":"Pink Stained Glass", "color":"yellow"}
execute if score variant3_game vs_tempBlock matches 16 run title @a[tag=variant3_player,limit=1] subtitle {"text":"Place down Pink Stained Glass", "color":"gray"}
execute if score variant3_game vs_tempBlock matches 16 run playsound minecraft:block.note_block.harp master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
execute if score variant3_game vs_tempBlock matches 16 run playsound minecraft:ui.button.click master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
execute if score variant3_game vs_tempBlock matches 16 run playsound minecraft:entity.item.pickup master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
execute if score variant3_game vs_tempBlock matches 17 run title @a[tag=variant3_player,limit=1] title {"text":"Glass Pane", "color":"yellow"}
execute if score variant3_game vs_tempBlock matches 17 run title @a[tag=variant3_player,limit=1] subtitle {"text":"Place down Glass Pane", "color":"gray"}
execute if score variant3_game vs_tempBlock matches 17 run playsound minecraft:block.note_block.harp master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
execute if score variant3_game vs_tempBlock matches 17 run playsound minecraft:ui.button.click master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
execute if score variant3_game vs_tempBlock matches 17 run playsound minecraft:entity.item.pickup master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
execute if score variant3_game vs_tempBlock matches 18 run title @a[tag=variant3_player,limit=1] title {"text":"White Stained Glass Pane", "color":"yellow"}
execute if score variant3_game vs_tempBlock matches 18 run title @a[tag=variant3_player,limit=1] subtitle {"text":"Place down White Stained Glass Pane", "color":"gray"}
execute if score variant3_game vs_tempBlock matches 18 run playsound minecraft:block.note_block.harp master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
execute if score variant3_game vs_tempBlock matches 18 run playsound minecraft:ui.button.click master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
execute if score variant3_game vs_tempBlock matches 18 run playsound minecraft:entity.item.pickup master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
execute if score variant3_game vs_tempBlock matches 19 run title @a[tag=variant3_player,limit=1] title {"text":"Light Gray Stained Glass Pane", "color":"yellow"}
execute if score variant3_game vs_tempBlock matches 19 run title @a[tag=variant3_player,limit=1] subtitle {"text":"Place down Light Gray Stained Glass Pane", "color":"gray"}
execute if score variant3_game vs_tempBlock matches 19 run playsound minecraft:block.note_block.harp master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
execute if score variant3_game vs_tempBlock matches 19 run playsound minecraft:ui.button.click master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
execute if score variant3_game vs_tempBlock matches 19 run playsound minecraft:entity.item.pickup master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
execute if score variant3_game vs_tempBlock matches 20 run title @a[tag=variant3_player,limit=1] title {"text":"Gray Stained Glass Pane", "color":"yellow"}
execute if score variant3_game vs_tempBlock matches 20 run title @a[tag=variant3_player,limit=1] subtitle {"text":"Place down Gray Stained Glass Pane", "color":"gray"}
execute if score variant3_game vs_tempBlock matches 20 run playsound minecraft:block.note_block.harp master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
execute if score variant3_game vs_tempBlock matches 20 run playsound minecraft:ui.button.click master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
execute if score variant3_game vs_tempBlock matches 20 run playsound minecraft:entity.item.pickup master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
execute if score variant3_game vs_tempBlock matches 21 run title @a[tag=variant3_player,limit=1] title {"text":"Black Stained Glass Pane", "color":"yellow"}
execute if score variant3_game vs_tempBlock matches 21 run title @a[tag=variant3_player,limit=1] subtitle {"text":"Place down Black Stained Glass Pane", "color":"gray"}
execute if score variant3_game vs_tempBlock matches 21 run playsound minecraft:block.note_block.harp master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
execute if score variant3_game vs_tempBlock matches 21 run playsound minecraft:ui.button.click master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
execute if score variant3_game vs_tempBlock matches 21 run playsound minecraft:entity.item.pickup master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
execute if score variant3_game vs_tempBlock matches 22 run title @a[tag=variant3_player,limit=1] title {"text":"Brown Stained Glass Pane", "color":"yellow"}
execute if score variant3_game vs_tempBlock matches 22 run title @a[tag=variant3_player,limit=1] subtitle {"text":"Place down Brown Stained Glass Pane", "color":"gray"}
execute if score variant3_game vs_tempBlock matches 22 run playsound minecraft:block.note_block.harp master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
execute if score variant3_game vs_tempBlock matches 22 run playsound minecraft:ui.button.click master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
execute if score variant3_game vs_tempBlock matches 22 run playsound minecraft:entity.item.pickup master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
execute if score variant3_game vs_tempBlock matches 23 run title @a[tag=variant3_player,limit=1] title {"text":"Red Stained Glass Pane", "color":"yellow"}
execute if score variant3_game vs_tempBlock matches 23 run title @a[tag=variant3_player,limit=1] subtitle {"text":"Place down Red Stained Glass Pane", "color":"gray"}
execute if score variant3_game vs_tempBlock matches 23 run playsound minecraft:block.note_block.harp master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
execute if score variant3_game vs_tempBlock matches 23 run playsound minecraft:ui.button.click master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
execute if score variant3_game vs_tempBlock matches 23 run playsound minecraft:entity.item.pickup master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
execute if score variant3_game vs_tempBlock matches 24 run title @a[tag=variant3_player,limit=1] title {"text":"Orange Stained Glass Pane", "color":"yellow"}
execute if score variant3_game vs_tempBlock matches 24 run title @a[tag=variant3_player,limit=1] subtitle {"text":"Place down Orange Stained Glass Pane", "color":"gray"}
execute if score variant3_game vs_tempBlock matches 24 run playsound minecraft:block.note_block.harp master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
execute if score variant3_game vs_tempBlock matches 24 run playsound minecraft:ui.button.click master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
execute if score variant3_game vs_tempBlock matches 24 run playsound minecraft:entity.item.pickup master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
execute if score variant3_game vs_tempBlock matches 25 run title @a[tag=variant3_player,limit=1] title {"text":"Yellow Stained Glass Pane", "color":"yellow"}
execute if score variant3_game vs_tempBlock matches 25 run title @a[tag=variant3_player,limit=1] subtitle {"text":"Place down Yellow Stained Glass Pane", "color":"gray"}
execute if score variant3_game vs_tempBlock matches 25 run playsound minecraft:block.note_block.harp master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
execute if score variant3_game vs_tempBlock matches 25 run playsound minecraft:ui.button.click master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
execute if score variant3_game vs_tempBlock matches 25 run playsound minecraft:entity.item.pickup master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
execute if score variant3_game vs_tempBlock matches 26 run title @a[tag=variant3_player,limit=1] title {"text":"Lime Stained Glass Pane", "color":"yellow"}
execute if score variant3_game vs_tempBlock matches 26 run title @a[tag=variant3_player,limit=1] subtitle {"text":"Place down Lime Stained Glass Pane", "color":"gray"}
execute if score variant3_game vs_tempBlock matches 26 run playsound minecraft:block.note_block.harp master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
execute if score variant3_game vs_tempBlock matches 26 run playsound minecraft:ui.button.click master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
execute if score variant3_game vs_tempBlock matches 26 run playsound minecraft:entity.item.pickup master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
execute if score variant3_game vs_tempBlock matches 27 run title @a[tag=variant3_player,limit=1] title {"text":"Green Stained Glass Pane", "color":"yellow"}
execute if score variant3_game vs_tempBlock matches 27 run title @a[tag=variant3_player,limit=1] subtitle {"text":"Place down Green Stained Glass Pane", "color":"gray"}
execute if score variant3_game vs_tempBlock matches 27 run playsound minecraft:block.note_block.harp master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
execute if score variant3_game vs_tempBlock matches 27 run playsound minecraft:ui.button.click master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
execute if score variant3_game vs_tempBlock matches 27 run playsound minecraft:entity.item.pickup master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
execute if score variant3_game vs_tempBlock matches 28 run title @a[tag=variant3_player,limit=1] title {"text":"Cyan Stained Glass Pane", "color":"yellow"}
execute if score variant3_game vs_tempBlock matches 28 run title @a[tag=variant3_player,limit=1] subtitle {"text":"Place down Cyan Stained Glass Pane", "color":"gray"}
execute if score variant3_game vs_tempBlock matches 28 run playsound minecraft:block.note_block.harp master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
execute if score variant3_game vs_tempBlock matches 28 run playsound minecraft:ui.button.click master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
execute if score variant3_game vs_tempBlock matches 28 run playsound minecraft:entity.item.pickup master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
execute if score variant3_game vs_tempBlock matches 29 run title @a[tag=variant3_player,limit=1] title {"text":"Light Blue Stained Glass Pane", "color":"yellow"}
execute if score variant3_game vs_tempBlock matches 29 run title @a[tag=variant3_player,limit=1] subtitle {"text":"Place down Light Blue Stained Glass Pane", "color":"gray"}
execute if score variant3_game vs_tempBlock matches 29 run playsound minecraft:block.note_block.harp master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
execute if score variant3_game vs_tempBlock matches 29 run playsound minecraft:ui.button.click master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
execute if score variant3_game vs_tempBlock matches 29 run playsound minecraft:entity.item.pickup master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
execute if score variant3_game vs_tempBlock matches 30 run title @a[tag=variant3_player,limit=1] title {"text":"Blue Stained Glass Pane", "color":"yellow"}
execute if score variant3_game vs_tempBlock matches 30 run title @a[tag=variant3_player,limit=1] subtitle {"text":"Place down Blue Stained Glass Pane", "color":"gray"}
execute if score variant3_game vs_tempBlock matches 30 run playsound minecraft:block.note_block.harp master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
execute if score variant3_game vs_tempBlock matches 30 run playsound minecraft:ui.button.click master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
execute if score variant3_game vs_tempBlock matches 30 run playsound minecraft:entity.item.pickup master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
execute if score variant3_game vs_tempBlock matches 31 run title @a[tag=variant3_player,limit=1] title {"text":"Purple Stained Glass Pane", "color":"yellow"}
execute if score variant3_game vs_tempBlock matches 31 run title @a[tag=variant3_player,limit=1] subtitle {"text":"Place down Purple Stained Glass Pane", "color":"gray"}
execute if score variant3_game vs_tempBlock matches 31 run playsound minecraft:block.note_block.harp master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
execute if score variant3_game vs_tempBlock matches 31 run playsound minecraft:ui.button.click master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
execute if score variant3_game vs_tempBlock matches 31 run playsound minecraft:entity.item.pickup master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
execute if score variant3_game vs_tempBlock matches 32 run title @a[tag=variant3_player,limit=1] title {"text":"Magenta Stained Glass Pane", "color":"yellow"}
execute if score variant3_game vs_tempBlock matches 32 run title @a[tag=variant3_player,limit=1] subtitle {"text":"Place down Magenta Stained Glass Pane", "color":"gray"}
execute if score variant3_game vs_tempBlock matches 32 run playsound minecraft:block.note_block.harp master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
execute if score variant3_game vs_tempBlock matches 32 run playsound minecraft:ui.button.click master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
execute if score variant3_game vs_tempBlock matches 32 run playsound minecraft:entity.item.pickup master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
execute if score variant3_game vs_tempBlock matches 33 run title @a[tag=variant3_player,limit=1] title {"text":"Pink Stained Glass Pane", "color":"yellow"}
execute if score variant3_game vs_tempBlock matches 33 run title @a[tag=variant3_player,limit=1] subtitle {"text":"Place down Pink Stained Glass Pane", "color":"gray"}
execute if score variant3_game vs_tempBlock matches 33 run playsound minecraft:block.note_block.harp master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
execute if score variant3_game vs_tempBlock matches 33 run playsound minecraft:ui.button.click master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
execute if score variant3_game vs_tempBlock matches 33 run playsound minecraft:entity.item.pickup master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
function variant_swap_minigame:variant3/cooldown_3
schedule function variant_swap_minigame:variant3/check 60t
