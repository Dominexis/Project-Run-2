# Assign data

data merge entity @s {Tags:["kello.entity","kello.decal","kello.entity.ticking","kello.entity.type.meteor_pillar","kello.entity.part.pillar"],transformation:[-5.5f,0.0f,6.735557395310443e-16f,0.047225625f,0.0f,5.5f,0.0f,0.047225625f,-6.735557395310443e-16f,0.0f,-5.5f,5.783471049398322e-18f,0.0f,0.0f,0.0f,1.0f],item_display:"head",item:{id:"minecraft:leather_helmet",tag:{CustomModelData:351919,display:{color:2106383}},Count:1b},brightness:{sky:15,block:14}}


# Assign score

scoreboard players add #global kello.entity.id 1
scoreboard players operation @s kello.entity.id = #global kello.entity.id


scoreboard players add @s kello.entity.timer 15



# Assign rotation

tp @s ~ ~ ~ ~ ~
return 1