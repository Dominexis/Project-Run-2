data merge entity @s {id:"minecraft:item_display",Tags:["kello.decal","kello.level_decal","kello.decal.type.chapter_1_billboard"],transformation:[-4.166666666666667f,0f,5.102694996447306e-16f,0f,0f,4.166666666666667f,0f,-0.0625f,-5.102694996447306e-16f,0f,-4.166666666666667f,0f,0f,0f,0f,1f],interpolation_duration:1,item_display:"head",item:{id:"minecraft:leather_horse_armor",Count:1b,tag:{CustomModelData:351905}},height:65f,width:64f,brightness:{sky:8,block:12}}
tp @s ~ ~ ~ -135 0

execute if score #level_creation_mode kello.value matches 1 run scoreboard players operation @s kello.level.id = #local kello.level.id