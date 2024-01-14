# Assign data

data merge entity @s {transformation:[-1.0f,7.070608103022681e-17f,9.999123927607648e-17f,0.047225625f,0.0f,0.8164904309201173f,-0.5773589665155303f,0.047225625f,-1.2246467991473532e-16f,-0.5773589665155303f,-0.8164904309201173f,5.783471049398322e-18f,0.0f,0.0f,0.0f,1.0f],item_display:"head",item:{id:"minecraft:leather_helmet",tag:{CustomModelData:351906,display:{color:2106383}},Count:1b},height:10.0f,width:10.0f}


# Assign scores

scoreboard players set @s kello.decal.active 1


# Assign tags

tag @s add kello.entity
tag @s add kello.exclude
tag @s add kello.decal
tag @s add kello.entity.type.chapter_1
tag @s add kello.entity.type.falling_platform
tag @s add kello.entity.part.boom


scoreboard players operation @s kello.entity.id = #local kello.entity.id



# Displays

function kello:entity/decal/component/falling_platform/spawn/chapter_1/display/extra
return 1