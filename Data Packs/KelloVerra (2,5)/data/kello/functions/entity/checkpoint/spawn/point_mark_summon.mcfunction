
# Data

data merge entity @s {Tags:["kello.entity","kello.exclude","kello.entity.type.checkpoint","kello.entity.part.mark_flag","pr.ignore"],Item:{id:"minecraft:magenta_stained_glass_pane",tag:{CustomModelData:351983},Count:1b}}




# Reference

data modify entity @s Owner set from storage kello:data tag.Owner_0

ride @s mount @e[type=minecraft:item_display,tag=kello.target.checkpoint_mark,limit=1]
return 1