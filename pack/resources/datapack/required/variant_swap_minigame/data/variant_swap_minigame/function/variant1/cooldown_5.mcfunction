title @a[tag=variant1_player,limit=1] actionbar {"text":"5", "color":"gold"}
playsound minecraft:block.note_block.bell master @a[tag=variant1_player,limit=1] ~ ~ ~ 1 1
playsound minecraft:block.note_block.hat master @a[tag=variant1_player,limit=1] ~ ~ ~ 1 1
schedule function variant_swap_minigame:variant1/cooldown_4 20t replace
