execute if score #variant kello.value matches 0 run item replace entity @s container.0 with minecraft:leather_horse_armor{CustomModelData:351907,display:{color:2106383}}
execute if score #variant kello.value matches 1 run item replace entity @s container.0 with minecraft:leather_horse_armor{CustomModelData:351908,display:{color:2106383}}
execute if score #variant kello.value matches 2 run item replace entity @s container.0 with minecraft:leather_horse_armor{CustomModelData:351909,display:{color:2106383}}

data merge entity @s {Tags:["kello.decal","pr.ignore","kello.decal.type.mellobanner"],width:2.25,height:3.5,brightness:{sky:5,block:2},transformation:[-1.7791666666666668f,0.0f,2.1788507634829993e-16f,0.0f,0.0f,1.7791666666666668f,0.0f,-0.3125f,-2.1788507634829993e-16f,0.0f,-1.7791666666666668f,0.0f,0.0f,0.0f,0.0f,1.0f],interpolation_duration:1,item_display:"head"}
tp @s ~ ~ ~ ~ ~
execute unless score #level_creation_mode kello.value matches 1 run tp @s ~ ~ ~ ~-90 0

function kello:debug/decal/util/spawn/verify/decals/initialize
return 1