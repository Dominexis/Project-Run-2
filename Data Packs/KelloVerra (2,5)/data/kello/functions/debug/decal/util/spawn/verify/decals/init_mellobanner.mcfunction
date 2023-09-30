execute if entity @s[tag=kello.decal.variant_0] run item replace entity @s container.0 with minecraft:leather_horse_armor{CustomModelData:351907,display:{color:2106383}}
execute if entity @s[tag=kello.decal.variant_1] run item replace entity @s container.0 with minecraft:leather_horse_armor{CustomModelData:351908,display:{color:2106383}}
execute if entity @s[tag=kello.decal.variant_2] run item replace entity @s container.0 with minecraft:leather_horse_armor{CustomModelData:351909,display:{color:2106383}}

data merge entity @s {Tags:["kello.decal","kello.ignore","kello.decal.type.mellobanner"],width:2.25,height:3.5,brightness:{sky:5,block:2},transformation:[-1.7791666666666668f,0f,2.1788507634829993e-16f,0f,0f,1.7791666666666668f,0f,-0.3125f,-2.1788507634829993e-16f,0f,-1.7791666666666668f,0f,0f,0f,0f,1f],interpolation_duration:1,item_display:"head"}
tp @s ~ ~ ~ ~ 0

function kello:debug/decal/util/spawn/verify/decals/initialize