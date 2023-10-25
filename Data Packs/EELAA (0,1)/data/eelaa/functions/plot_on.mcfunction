# This function will run when the plot turns on, which is when players enter your plot after it was empty
# It will run in your plot on the center block at Y=0
# Use this to prepare your plot for players



#summoning the tridents
summon item ~36 ~-59.8 ~15 {NoGravity:1b,Age:-32768,PickupDelay:32767,Item:{id:"minecraft:trident",Count:1b,tag:{Enchantments:[{}]}},CustomName:'{"text":"Riptide","color":"white"}',Tags:["pr.target","eelaa_trident"]}
summon item ~-4 ~-41.8 ~34 {NoGravity:1b,Age:-32768,PickupDelay:32767,Item:{id:"minecraft:trident",Count:1b,tag:{Enchantments:[{}]}},CustomName:'{"text":"Loyalty","color":"white"}',Tags:["pr.target","eelaa_trident"]}

#adding scoreboards
scoreboard objectives add eelaa_tridents dummy
scoreboard objectives add eelaa_tridents_timer dummy
scoreboard objectives add eelaa_item_count dummy



setblock ~22 ~-38 ~-21 air