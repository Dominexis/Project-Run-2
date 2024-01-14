# Assign, everything

data merge entity @s {Tags:["kello.entity","kello.decal","kello.entity.type.large","kello.entity.type.launchpad","kello.entity.part.visual"],item:{id:"minecraft:leather_horse_armor",tag:{CustomModelData:351901,display:{color:2106383}},Count:1b},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,3.5f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.5f,0.5f,5.75f]},brightness:{sky:15,block:15},height:4.5f,width:0.5f}
scoreboard players operation @s kello.entity.id = #global kello.entity.id
tp @s ~ ~ ~ ~ ~
ride @s mount @e[type=minecraft:item_display,tag=kello.decal.parent_target,limit=1]
return 1