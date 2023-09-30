# Assign scores

scoreboard players operation @s kello.entity.id = #local kello.entity.id
scoreboard players set @s kello.entity.lifetime 400
scoreboard players add @s kello.entity.timer 0

execute if score #level_creation_mode kello.value matches 1 run scoreboard players operation @s kello.level.id = #local kello.level.id




# Assign tags

data merge entity @s {transformation:{scale:[1.05f,1f,1.05f]},brightness:{block:13,sky:13},view_range:15,Tags:["kello.entity","kello.entity.type.groundicator","kello.entity.part.indicator","kello.entity.type.small","kello.entity.ticking"]}

execute if score #spawn_persistent kello.value matches 1 run tag @s add kello.groundicator.persistent