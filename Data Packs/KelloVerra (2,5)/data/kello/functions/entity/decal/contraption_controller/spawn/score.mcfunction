# Assign data

# DEBUG MARKED
# data merge entity @s {transformation:{scale:[1f,1f,1f]},brightness:{block:15,sky:15},billboard:"center",view_range:15,item:{id:"minecraft:magenta_stained_glass_pane",Count:1b,tag:{CustomModelData:351962}},Tags:["kello.entity","kello.decal","kello.entity.type.decal_contraption_controller","kello.entity.type.decal_controller","kello.entity.part.main",      "kello.decal.controlled","kello.entity.ticking","kello.entity.target.spawn"]}
data merge entity @s {view_range:0,item:{id:"minecraft:magenta_stained_glass_pane",tag:{CustomModelData:351983},Count:1b},Tags:["kello.entity","kello.decal","kello.entity.type.decal_contraption_controller","kello.entity.type.decal_controller","kello.entity.part.main","kello.decal.controlled","kello.entity.ticking","kello.entity.target.spawn"]}

# Assign scores

scoreboard players add @s kello.decal.shafts_activated 0
scoreboard players add @s kello.decal.shafts 1



# Assign entity IDs

scoreboard players add #global kello.entity.id 1
scoreboard players operation @s kello.entity.id = #global kello.entity.id

execute unless score #uninstantiate kello.value matches 1 run scoreboard players add #global kello.decal.id 1
scoreboard players operation @s kello.decal.id = #global kello.decal.id
execute if score #uninstantiate kello.value matches 1 run scoreboard players operation @s kello.decal.id = #init kello.decal.id

execute if score #level_creation_mode kello.value matches 1 run function kello:tick/level/creation_mode
execute if score #level_creation_mode kello.value matches 1 run scoreboard players operation @s kello.entity.checkpoint.id = #init kello.entity.checkpoint.id
execute if score #level_creation_mode kello.value matches 1 run scoreboard players operation @s kello.entity.ignore_checkpoint = #halt_contraption_controller_checkpoint kello.value
return 1