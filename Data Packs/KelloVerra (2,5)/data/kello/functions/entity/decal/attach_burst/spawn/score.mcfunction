# Assign data

data merge entity @s {Tags:["kello.entity","kello.decal","kello.entity.ticking","kello.entity.type.attach_burst","kello.entity.part.burst"],transformation:[-3.8333333333333335f,0.0f,4.694479396731521e-16f,0.047225625f,0.0f,3.8333333333333335f,0.0f,0.047225625f,-4.694479396731521e-16f,0.0f,-3.8333333333333335f,5.783471049398322e-18f,0.0f,0.0f,0.0f,1.0f],item_display:"head",item:{id:"minecraft:leather_helmet",tag:{CustomModelData:351918,display:{color:2106383}},Count:1b},brightness:{sky:14,block:10}}


# Assign score

scoreboard players add #global kello.entity.id 1
scoreboard players operation @s kello.entity.id = #global kello.entity.id


scoreboard players add @s kello.entity.timer 07



# Assign rotation

tp @s ~ ~ ~ ~ ~
return 1