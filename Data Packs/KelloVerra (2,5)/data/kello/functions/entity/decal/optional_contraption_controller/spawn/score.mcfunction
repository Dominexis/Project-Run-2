# Assign scores

scoreboard players add @s kello.decal.shafts_activated 0



# Assign entity IDs

scoreboard players add #global kello.entity.id 1
scoreboard players operation @s kello.entity.id = #global kello.entity.id

scoreboard players add #global kello.decal.id 1
scoreboard players operation @s kello.decal.id = #global kello.decal.id
#scoreboard players operation #selected kello.decal.id = #global kello.decal.id