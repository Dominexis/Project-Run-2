data merge entity @s {id:"minecraft:item_display",Tags:["kello.decal","kello.level_decal","kello.decal.type.chapter_1_billboard_music","kello.exclude","pr.ignore"],transformation:[-4.416666666666667f,0.0f,5.408856696234144e-16f,0.0f,0.0f,4.416666666666667f,0.0f,-0.0625f,-5.408856696234144e-16f,0.0f,-4.416666666666667f,0.0f,0.0f,0.0f,0.0f,1.0f],interpolation_duration:1,item_display:"head",item:{id:"minecraft:leather_horse_armor",tag:{CustomModelData:351910},Count:1b},height:65.0f,width:64.0f,brightness:{sky:5,block:8}}
tp @s ~ ~ ~ 127.5 0

execute if score #level_creation_mode kello.value matches 1 run function kello:tick/level/creation_mode
return 1