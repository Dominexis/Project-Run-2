# This function will run when the plot turns on, which is when players enter your plot after it was empty
# It will run in your plot on the center block at Y=0
# Use this to prepare your plot for players

scoreboard objectives add earthmere_cp dummy
scoreboard objectives add earthmere_time dummy
scoreboard objectives add earthmere_start dummy
scoreboard objectives add earthmere_end dummy

function earthmere:checkpoint/spawn

execute positioned ~-18.5 ~-5.5 ~-11.5 summon minecraft:item_display run data merge entity @s {Tags:["earthmere_model"],item:{id:"minecraft:apple",Count:1b,tag:{CustomModelData:1227001}},transformation:{left_rotation:{axis:[1.0,0.0,0.0],angle:1.4},scale:[2.0,2.0,2.0]},Rotation:[90.0f,0.0f]}

return 1