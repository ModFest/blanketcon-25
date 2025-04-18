scoreboard objectives add vs_round dummy
scoreboard objectives add vs_tempPos dummy
scoreboard objectives add vs_tempBlock dummy
scoreboard objectives add vs_successFlag dummy
scoreboard objectives add vs_wins dummy "Games Won"
scoreboard objectives add vs_v1 dummy "Variant1 Won"
scoreboard objectives add vs_v2 dummy "Variant2 Won"
scoreboard objectives add vs_v3 dummy "Variant3 Won"
execute unless entity @e[name=minigame_target] run summon armor_stand 17.5 78 4.5 {CustomName:"\"minigame_target\"",NoGravity:1b,Marker:1b,Invisible:1b}
execute unless entity @e[tag=randomizer_floor] run summon armor_stand 12 0 0 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["randomizer_floor"]}
execute unless entity @e[tag=randomizer_block] run summon armor_stand 1.5 0 0 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["randomizer_block"]}
