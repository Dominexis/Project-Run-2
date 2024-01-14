# Merge data

tag @s add kello.entity
tag @s add kello.decal
tag @s add kello.entity.type.escapement
tag @s add kello.entity.part.escapement
tag @s add kello.entity.ticking
tag @s add kello.decal.component
tag @s add kello.decal.controlled


# Assign decal IDs

scoreboard players operation @s kello.decal.id = #selected kello.decal.id
scoreboard players operation @s kello.entity.id = #global kello.entity.id



# Boolean

scoreboard players set #boolean kello.value 1
scoreboard players set #boolean1 kello.value 1
return 1