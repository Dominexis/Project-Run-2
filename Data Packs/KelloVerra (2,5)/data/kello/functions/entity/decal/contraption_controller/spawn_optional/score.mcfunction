# Assign scores

data merge entity @s {transformation:{scale:[1f,1f,1f]},brightness:{block:15,sky:15},billboard:"center",view_range:15,item:{id:"minecraft:magenta_stained_glass_pane",Count:1b,tag:{CustomModelData:351966}},Tags:["kello.entity","kello.decal","kello.entity.type.decal_contraption_controller","kello.entity.type.decal_controller","kello.entity.part.main","kello.entity.type.optional",      "kello.decal.controlled","kello.entity.ticking"]}


# Assign scores

scoreboard players add @s kello.decal.shafts_activated 0




# Assign entity IDs

scoreboard players add #global kello.entity.id 1
scoreboard players operation @s kello.entity.id = #global kello.entity.id

execute unless score #uninstantiate kello.value matches 1 run scoreboard players add #global kello.decal.id 1
scoreboard players operation @s kello.decal.id = #global kello.decal.id
execute if score #uninstantiate kello.value matches 1 run scoreboard players operation @s kello.decal.id = #init kello.decal.id

execute if score #level_creation_mode kello.value matches 1 run scoreboard players operation @s kello.level.id = #local kello.level.id

# Notify

# tellraw @p [{"text":"> Spawned a optional contraption controller, using ID => ","color":"gray"},{"score":{"name":"@s","objective":"kello.decal.id"},"color":"white"}]