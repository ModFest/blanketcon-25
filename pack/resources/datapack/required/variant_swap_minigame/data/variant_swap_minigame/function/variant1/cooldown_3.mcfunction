title @a[tag=variant1_player,limit=1] actionbar {"text":"3", "color":"red"}
playsound minecraft:block.note_block.bell master @a[tag=variant1_player,limit=1] ~ ~ ~ 1 1
playsound minecraft:block.note_block.hat master @a[tag=variant1_player,limit=1] ~ ~ ~ 1 1
schedule function variant_swap_minigame:variant1/cooldown_2 20t replace
