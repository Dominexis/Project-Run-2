# Data

data merge entity @s {Tags:["kello.entity","kello.decal","kello.exclude","kello.ignore","kello.entity.type.moving_platform","kello.entity.part.pointer"],Item:{id:"minecraft:magenta_stained_glass_pane",Count:1b,tag:{CustomModelData:351983}}}




# Reference

scoreboard players operation @s kello.entity.id = #global kello.entity.id
data modify entity @s Owner set from storage kello:data tag.Owner

ride @s mount @e[type=item_display,tag=kello.parent_target,limit=1]