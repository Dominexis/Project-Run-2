# Assign scores

#scoreboard players add @s kello.decal.shafts 1
scoreboard players add @s kello.decal.shafts_activated 0
scoreboard players add @s kello.entity.active_children 0




# Assign entity IDs

scoreboard players add #global kello.entity.id 1
scoreboard players operation @s kello.entity.id = #global kello.entity.id

execute unless score #uninstantiate kello.value matches 1 run scoreboard players add #global kello.decal.id 1
scoreboard players operation @s kello.decal.id = #global kello.decal.id
execute if score #uninstantiate kello.value matches 1 run scoreboard players operation @s kello.decal.id = #init kello.decal.id

execute if score #level_creation_mode kello.value matches 1 run function kello:tick/level/creation_mode
execute if score #level_creation_mode kello.value matches 1 run scoreboard players operation @s kello.entity.checkpoint.id = #init kello.entity.checkpoint.id

#scoreboard players operation #selected kello.decal.id = #global kello.decal.id