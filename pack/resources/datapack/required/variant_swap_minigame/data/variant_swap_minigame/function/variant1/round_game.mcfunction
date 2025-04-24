kill @e[tag=randomizer_floor,limit=1]
kill @e[tag=randomizer_block,limit=1]
summon armor_stand 12 0 0 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["randomizer_floor"]}
summon armor_stand 1.5 0 0 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["randomizer_block"]}
spreadplayers 12 0 0 12 false @e[tag=randomizer_floor,limit=1]
execute store result score minigame vs_tempPos run data get entity @e[tag=randomizer_floor,limit=1] Pos[0]
execute if score minigame vs_tempPos matches 1 run function variant_swap_minigame:variant1/setpos_1
execute if score minigame vs_tempPos matches 2 run function variant_swap_minigame:variant1/setpos_2
execute if score minigame vs_tempPos matches 3 run function variant_swap_minigame:variant1/setpos_3
execute if score minigame vs_tempPos matches 4 run function variant_swap_minigame:variant1/setpos_4
execute if score minigame vs_tempPos matches 5 run function variant_swap_minigame:variant1/setpos_5
execute if score minigame vs_tempPos matches 6 run function variant_swap_minigame:variant1/setpos_6
execute if score minigame vs_tempPos matches 7 run function variant_swap_minigame:variant1/setpos_7
execute if score minigame vs_tempPos matches 8 run function variant_swap_minigame:variant1/setpos_8
execute if score minigame vs_tempPos matches 9 run function variant_swap_minigame:variant1/setpos_9
execute if score minigame vs_tempPos matches 10 run function variant_swap_minigame:variant1/setpos_10
execute if score minigame vs_tempPos matches 11 run function variant_swap_minigame:variant1/setpos_11
execute if score minigame vs_tempPos matches 12 run function variant_swap_minigame:variant1/setpos_12
execute if score minigame vs_tempPos matches 13 run function variant_swap_minigame:variant1/setpos_13
execute if score minigame vs_tempPos matches 14 run function variant_swap_minigame:variant1/setpos_14
execute if score minigame vs_tempPos matches 15 run function variant_swap_minigame:variant1/setpos_15
execute if score minigame vs_tempPos matches 16 run function variant_swap_minigame:variant1/setpos_16
execute if score minigame vs_tempPos matches 17 run function variant_swap_minigame:variant1/setpos_17
execute if score minigame vs_tempPos matches 18 run function variant_swap_minigame:variant1/setpos_18
execute if score minigame vs_tempPos matches 19 run function variant_swap_minigame:variant1/setpos_19
execute if score minigame vs_tempPos matches 20 run function variant_swap_minigame:variant1/setpos_20
execute if score minigame vs_tempPos matches 21 run function variant_swap_minigame:variant1/setpos_21
execute if score minigame vs_tempPos matches 22 run function variant_swap_minigame:variant1/setpos_22
execute if score minigame vs_tempPos matches 23 run function variant_swap_minigame:variant1/setpos_23
execute if score minigame vs_tempPos matches 24 run function variant_swap_minigame:variant1/setpos_24
spreadplayers 5 0 0 5 false @e[tag=randomizer_block,limit=1]
execute store result score minigame vs_tempBlock run data get entity @e[tag=randomizer_block,limit=1] Pos[0]
execute if score minigame vs_tempBlock matches 0 run title @p title {"text":"Oak Planks", "color":"green"}
execute if score minigame vs_tempBlock matches 0 run title @p subtitle {"text":"Place down Oak Planks", "color":"gray"}
execute if score minigame vs_tempBlock matches 0 run playsound minecraft:block.note_block.harp master @p ~ ~ ~ 1 1
execute if score minigame vs_tempBlock matches 0 run playsound minecraft:ui.button.click master @p ~ ~ ~ 1 1
execute if score minigame vs_tempBlock matches 0 run playsound minecraft:entity.item.pickup master @p ~ ~ ~ 1 1
execute if score minigame vs_tempBlock matches 1 run title @p title {"text":"Spruce Planks", "color":"green"}
execute if score minigame vs_tempBlock matches 1 run title @p subtitle {"text":"Place down Spruce Planks", "color":"gray"}
execute if score minigame vs_tempBlock matches 1 run playsound minecraft:block.note_block.harp master @p ~ ~ ~ 1 1
execute if score minigame vs_tempBlock matches 1 run playsound minecraft:ui.button.click master @p ~ ~ ~ 1 1
execute if score minigame vs_tempBlock matches 1 run playsound minecraft:entity.item.pickup master @p ~ ~ ~ 1 1
execute if score minigame vs_tempBlock matches 2 run title @p title {"text":"Birch Planks", "color":"green"}
execute if score minigame vs_tempBlock matches 2 run title @p subtitle {"text":"Place down Birch Planks", "color":"gray"}
execute if score minigame vs_tempBlock matches 2 run playsound minecraft:block.note_block.harp master @p ~ ~ ~ 1 1
execute if score minigame vs_tempBlock matches 2 run playsound minecraft:ui.button.click master @p ~ ~ ~ 1 1
execute if score minigame vs_tempBlock matches 2 run playsound minecraft:entity.item.pickup master @p ~ ~ ~ 1 1
execute if score minigame vs_tempBlock matches 3 run title @p title {"text":"Jungle Planks", "color":"green"}
execute if score minigame vs_tempBlock matches 3 run title @p subtitle {"text":"Place down Jungle Planks", "color":"gray"}
execute if score minigame vs_tempBlock matches 3 run playsound minecraft:block.note_block.harp master @p ~ ~ ~ 1 1
execute if score minigame vs_tempBlock matches 3 run playsound minecraft:ui.button.click master @p ~ ~ ~ 1 1
execute if score minigame vs_tempBlock matches 3 run playsound minecraft:entity.item.pickup master @p ~ ~ ~ 1 1
execute if score minigame vs_tempBlock matches 4 run title @p title {"text":"Acacia Planks", "color":"green"}
execute if score minigame vs_tempBlock matches 4 run title @p subtitle {"text":"Place down Acacia Planks", "color":"gray"}
execute if score minigame vs_tempBlock matches 4 run playsound minecraft:block.note_block.harp master @p ~ ~ ~ 1 1
execute if score minigame vs_tempBlock matches 4 run playsound minecraft:ui.button.click master @p ~ ~ ~ 1 1
execute if score minigame vs_tempBlock matches 4 run playsound minecraft:entity.item.pickup master @p ~ ~ ~ 1 1
execute if score minigame vs_tempBlock matches 5 run title @p title {"text":"Dark Oak Planks", "color":"green"}
execute if score minigame vs_tempBlock matches 5 run title @p subtitle {"text":"Place down Dark Oak Planks", "color":"gray"}
execute if score minigame vs_tempBlock matches 5 run playsound minecraft:block.note_block.harp master @p ~ ~ ~ 1 1
execute if score minigame vs_tempBlock matches 5 run playsound minecraft:ui.button.click master @p ~ ~ ~ 1 1
execute if score minigame vs_tempBlock matches 5 run playsound minecraft:entity.item.pickup master @p ~ ~ ~ 1 1
execute if score minigame vs_tempBlock matches 6 run title @p title {"text":"Mangrove Planks", "color":"green"}
execute if score minigame vs_tempBlock matches 6 run title @p subtitle {"text":"Place down Mangrove Planks", "color":"gray"}
execute if score minigame vs_tempBlock matches 6 run playsound minecraft:block.note_block.harp master @p ~ ~ ~ 1 1
execute if score minigame vs_tempBlock matches 6 run playsound minecraft:ui.button.click master @p ~ ~ ~ 1 1
execute if score minigame vs_tempBlock matches 6 run playsound minecraft:entity.item.pickup master @p ~ ~ ~ 1 1
execute if score minigame vs_tempBlock matches 7 run title @p title {"text":"Cherry Planks", "color":"green"}
execute if score minigame vs_tempBlock matches 7 run title @p subtitle {"text":"Place down Cherry Planks", "color":"gray"}
execute if score minigame vs_tempBlock matches 7 run playsound minecraft:block.note_block.harp master @p ~ ~ ~ 1 1
execute if score minigame vs_tempBlock matches 7 run playsound minecraft:ui.button.click master @p ~ ~ ~ 1 1
execute if score minigame vs_tempBlock matches 7 run playsound minecraft:entity.item.pickup master @p ~ ~ ~ 1 1
execute if score minigame vs_tempBlock matches 8 run title @p title {"text":"Bamboo Planks", "color":"green"}
execute if score minigame vs_tempBlock matches 8 run title @p subtitle {"text":"Place down Bamboo Planks", "color":"gray"}
execute if score minigame vs_tempBlock matches 8 run playsound minecraft:block.note_block.harp master @p ~ ~ ~ 1 1
execute if score minigame vs_tempBlock matches 8 run playsound minecraft:ui.button.click master @p ~ ~ ~ 1 1
execute if score minigame vs_tempBlock matches 8 run playsound minecraft:entity.item.pickup master @p ~ ~ ~ 1 1
execute if score minigame vs_tempBlock matches 9 run title @p title {"text":"Crimson Planks", "color":"green"}
execute if score minigame vs_tempBlock matches 9 run title @p subtitle {"text":"Place down Crimson Planks", "color":"gray"}
execute if score minigame vs_tempBlock matches 9 run playsound minecraft:block.note_block.harp master @p ~ ~ ~ 1 1
execute if score minigame vs_tempBlock matches 9 run playsound minecraft:ui.button.click master @p ~ ~ ~ 1 1
execute if score minigame vs_tempBlock matches 9 run playsound minecraft:entity.item.pickup master @p ~ ~ ~ 1 1
execute if score minigame vs_tempBlock matches 10 run title @p title {"text":"Warped Planks", "color":"green"}
execute if score minigame vs_tempBlock matches 10 run title @p subtitle {"text":"Place down Warped Planks", "color":"gray"}
execute if score minigame vs_tempBlock matches 10 run playsound minecraft:block.note_block.harp master @p ~ ~ ~ 1 1
execute if score minigame vs_tempBlock matches 10 run playsound minecraft:ui.button.click master @p ~ ~ ~ 1 1
execute if score minigame vs_tempBlock matches 10 run playsound minecraft:entity.item.pickup master @p ~ ~ ~ 1 1
function variant_swap_minigame:variant1/cooldown_5
schedule function variant_swap_minigame:variant1/check 100t
