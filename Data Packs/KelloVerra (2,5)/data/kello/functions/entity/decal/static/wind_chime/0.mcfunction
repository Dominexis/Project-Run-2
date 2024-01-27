data merge entity @s {Tags:["pr.ignore","kello.exclude","kello.decal","kello.decal.type.wind_chime","kello.decal.part.chimes","kello.entity.ride_target"],id:"minecraft:item_display",transformation:[-2.2869541666666664f,0.0f,2.8007111000050357e-16f,0.0f,0.0f,2.2869541666666664f,0.0f,0.678125f,-2.8007111000050357e-16f,0.0f,-2.2869541666666664f,0.0f,0.0f,0.0f,0.0f,1.0f],interpolation_duration:1,item_display:"head",item:{id:"minecraft:leather_helmet",tag:{CustomModelData:351946},Count:1b},height:32.0f,width:27.0f}


execute summon minecraft:item_display run function kello:entity/decal/static/wind_chime/ride
tag @s remove kello.entity.ride_target

function kello:entity/decal/static/wind_chime/common_init
return 1