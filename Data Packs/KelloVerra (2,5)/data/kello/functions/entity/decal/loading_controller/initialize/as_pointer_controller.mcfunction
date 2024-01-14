data merge entity @s {NoGravity:1b,Tags:["kello.decal.pointer_controller","kello.exclude","kello.decal","pr.ignore"],Item:{id:"minecraft:magenta_stained_glass_pane",tag:{CustomModelData:351983},Count:1b}}

data modify entity @s Owner set from storage kello:data tag.Owner
ride @s mount @e[tag=kello.decal.target,limit=1]
return 1