# Assign scores

scoreboard players operation @s kello.entity.id = #local kello.entity.id

execute if score #level_creation_mode kello.value matches 1 run function kello:tick/level/creation_mode



# Assign tags

data merge entity @s {item:{id:"minecraft:magenta_stained_glass_pane",tag:{CustomModelData:351960},Count:1b},transformation:{scale:[1.05f,0.95f,1.05f]},brightness:{block:15,sky:15},view_range:15,Tags:["kello.entity","kello.entity.type.placedicator","kello.entity.part.indicator","kello.entity.type.small","pr.ignore"]}
return 1