
# Assign scores

scoreboard players set @s kello.decal.active 1

function kello:entity/decal/init





# Assign tags

tag @s remove kello.entity.target.new
tag @s add kello.entity
tag @s add kello.decal
tag @s add kello.entity.type.chapter_1
tag @s add kello.entity.type.gate
tag @s add kello.entity.part.gate
tag @s add kello.decal.component
tag @s add kello.decal.controlled
tag @s add kello.decal.point


# Assign entity IDs

execute at @s on passengers run tp @s ~ ~ ~ ~ ~

execute at @s run fill ^1 ^ ^ ^-1 ^7 ^ minecraft:petrified_oak_slab[type=top] replace air

scoreboard players add #global kello.entity.id 1
scoreboard players operation @s kello.entity.id = #global kello.entity.id

scoreboard players operation @s kello.decal.id = #selected kello.decal.id

execute if score #level_creation_mode kello.value matches 1 run scoreboard players operation @s kello.level.id = #local kello.level.id
execute if score #ref_state kello.value matches 1 run scoreboard players operation @s kello.decal.state = #local kello.decal.state
execute if score #ref_rotation kello.value matches 1 run scoreboard players operation @s kello.decal.rot_mode = #local kello.decal.rot_mode

function kello:entity/decal/component/initialize/main