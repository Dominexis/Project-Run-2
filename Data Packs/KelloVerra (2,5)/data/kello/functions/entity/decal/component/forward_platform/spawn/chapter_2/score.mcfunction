# Data

data merge entity @s {Tags:["kello.entity","kello.entity.ticking","kello.decal","kello.entity.type.chapter_2","kello.entity.type.forward_platform","kello.entity.part.display"],transformation:[-1.7080569430488952f,1.1959939430743012f,2.085152420347667f,-0.05066875f,1.6913911670068658f,2.415557196346371f,3.1184187997729963e-7f,-0.5066875f,-1.7080568047120974f,1.1959943845848648f,-2.085152280426505f,-6.205132250429745e-18f,0f,0f,0f,1f],item_display:"head",item:{id:"minecraft:leather_horse_armor",Count:1b,tag:{CustomModelData:351904,display:{color:2106383}}},height:1f,width:2.75f,brightness:{sky:15,block:13}}



# Assign scores

scoreboard players set @s kello.decal.active 1

function kello:entity/decal/init





# Summon extra components

tag @s add kello.target
scoreboard players set #position kello.value 0
execute at @s summon item_display run function kello:entity/decal/component/forward_platform/spawn/chapter_2/platform/vehicle
scoreboard players set #position kello.value 1
execute at @s summon item_display run function kello:entity/decal/component/forward_platform/spawn/chapter_2/platform/vehicle
scoreboard players set #position kello.value 2
execute at @s summon item_display run function kello:entity/decal/component/forward_platform/spawn/chapter_2/platform/vehicle
tag @s remove kello.target



# Assign entity IDs

scoreboard players operation @s kello.entity.timer = #forward_platform_spawn_timer kello.value
scoreboard players operation @s kello.decal.timer = #forward_platform_timer kello.value

scoreboard players add #global kello.entity.id 1
scoreboard players operation @s kello.entity.id = #global kello.entity.id
scoreboard players operation @s kello.decal.id = #local kello.decal.id