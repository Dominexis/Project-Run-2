# Define data

data merge entity @s {view_range:1.75f,Tags:["kello.entity","kello.decal","kello.decal.controlled","kello.decal.component","kello.entity.type.falling_platform_spawner","kello.entity.type.chapter_1","kello.decal.point"],transformation:[-2.7740383333333334f,0f,3.397217165628725e-16f,0f,0f,2.7740383333333334f,0f,0.678125f,-3.397217165628725e-16f,0f,-2.7740383333333334f,0f,0f,0f,0f,1f],item_display:"head",item:{id:"minecraft:leather_helmet",Count:1b,tag:{CustomModelData:351903,display:{color:2106383}}},height:19f,width:33f}
function kello:entity/decal/init

# Passengers:[{id:"minecraft:snowball",NoGravity:1b,Silent:1b,Tags:[""],Item:{id:"minecraft:angler_pottery_sherd",Count:1b,tag:{CustomModelData:1}}}]


# Register

function kello:entity/decal/component/initialize/main




# Assign scores

scoreboard players add @s kello.entity.timer 640
scoreboard players add @s kello.decal.timer 5


scoreboard players add #global kello.entity.id 1
scoreboard players operation @s kello.entity.id = #global kello.entity.id
scoreboard players operation @s kello.decal.id = #selected kello.decal.id

execute if score #uninstantiate kello.value matches 1 run scoreboard players operation @s kello.decal.timer += #countdown kello.value

execute if score #level_creation_mode kello.value matches 1 run scoreboard players operation @s kello.level.id = #local kello.level.id


# Random rotation

scoreboard players set #input pr.value 361

function pr:generic/rng/lcg

execute store result entity @s Rotation[0] float 1 run scoreboard players get #output pr.value