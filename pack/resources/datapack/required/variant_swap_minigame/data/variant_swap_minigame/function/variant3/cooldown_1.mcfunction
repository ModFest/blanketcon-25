title @a[tag=variant3_player,limit=1] actionbar {"text":"1", "color":"red"}
playsound minecraft:block.note_block.bell master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
playsound minecraft:block.note_block.hat master @a[tag=variant3_player,limit=1] ~ ~ ~ 1 1
schedule function variant_swap_minigame:variant3/cooldown_end 20t replace
