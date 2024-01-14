# This function will run when the plot turns on, which is when players enter your plot after it was empty
# It will run in your plot on the center block at Y=0
# Use this to prepare your plot for players



#summoning the tridents
summon minecraft:item ~36 ~-59.8 ~15 {NoGravity:1b,Age:-32768,PickupDelay:32767,Item:{id:"minecraft:trident",tag:{Enchantments:[{}]},Count:1b},CustomName:'{"text":"Riptide","color":"white","type":"text"}',Tags:["pr.target","eelaa_trident"]}
summon minecraft:item ~-4 ~-41.8 ~34 {NoGravity:1b,Age:-32768,PickupDelay:32767,Item:{id:"minecraft:trident",tag:{Enchantments:[{}]},Count:1b},CustomName:'{"text":"Loyalty","color":"white","type":"text"}',Tags:["pr.target","eelaa_trident"]}

#adding scoreboards
scoreboard objectives add eelaa_tridents dummy
scoreboard objectives add eelaa_tridents_timer dummy
scoreboard objectives add eelaa_item_count dummy



setblock ~22 ~-38 ~-21 minecraft:air
return 1