# Assign scores

scoreboard players operation @s kello.entity.id = #local kello.entity.id

execute if score #level_creation_mode kello.value matches 1 run scoreboard players operation @s kello.level.id = #local kello.level.id



# Assign tags

data merge entity @s {item:{id:"minecraft:magenta_stained_glass_pane",Count:1b,tag:{CustomModelData:351959}},transformation:{scale:[1.05f,0.95f,1.05f]},brightness:{block:15,sky:15},view_range:15,Tags:["kello.entity","kello.entity.type.placedicator","kello.entity.part.indicator","kello.entity.type.large","pr.ignore"]}