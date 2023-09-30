# Define data

data merge entity @s {view_range:1.75f,billboard:"vertical",Tags:["kello.entity","kello.decal","kello.decal.controlled","kello.decal.component","kello.entity.type.forward_platform_spawner","kello.entity.type.chapter_2"],item:{id:"minecraft:leather_helmet",Count:1b,tag:{CustomModelData:2,display:{color:2106383}}},transformation:{scale:[2.75f,1.0f,2.75f]}}

# Passengers:[{id:"minecraft:snowball",NoGravity:1b,Silent:1b,Tags:[""],Item:{id:"minecraft:angler_pottery_sherd",Count:1b,tag:{CustomModelData:1}}}]


# Assign scores

scoreboard players add @s kello.entity.timer 120
scoreboard players add @s kello.decal.timer 1


scoreboard players add #global kello.entity.id 1
scoreboard players operation @s kello.entity.id = #global kello.entity.id
scoreboard players operation @s kello.decal.id = #selected kello.decal.id