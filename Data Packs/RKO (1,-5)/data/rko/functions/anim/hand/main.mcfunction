scoreboard players add hand rko.time 1

execute if score hand rko.time matches 40 run function rko:anim/hand/gate/open
execute if score hand rko.time matches 50 run function rko:anim/hand/gate/open
execute if score hand rko.time matches 80 run function rko:anim/hand/gate/close
execute if score hand rko.time matches 5 run function rko:anim/hand/gate/close

# Right #
execute if score hand rko.time matches 83 positioned ~24.5 ~33 ~ summon minecraft:item_display run data merge entity @s {item:{id:"minecraft:brick",Count:1b,tag:{CustomModelData:721003}},Tags:["rko_display","rko_hand","rko_new_hand"],transformation:{scale:[16.0,16.0,16.0],translation:[0.0,0.0,40.0]}}
# Left #
execute if score hand rko.time matches 83 positioned ~-23.5 ~33 ~ summon minecraft:item_display run data merge entity @s {item:{id:"minecraft:brick",Count:1b,tag:{CustomModelData:721003}},Tags:["rko_display","rko_hand","rko_new_hand"],transformation:{scale:[16.0,16.0,16.0],translation:[0.0,0.0,40.0]}}

execute if score hand rko.time matches 85.. run function rko:anim/hand/frame