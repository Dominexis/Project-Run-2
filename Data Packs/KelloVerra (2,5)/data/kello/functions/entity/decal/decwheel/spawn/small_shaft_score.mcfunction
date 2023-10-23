# Assign scores

scoreboard players set @s kello.decal.active 1

function kello:entity/decal/init

scoreboard players set #genocide_type kello.value 3
execute on passengers run function kello:entity/decal/decwheel/spawn/genocide




# Assign tags

tag @s add kello.entity
tag @s add kello.empty
tag @s add kello.decal
tag @s add kello.entity.type.small
tag @s add kello.entity.type.cogwheel_shaft
tag @s add kello.entity.part.shaft
tag @s add kello.decal.controlled
tag @s add kello.decal.point

# Assign entity IDs

scoreboard players add #global kello.entity.id 1
scoreboard players operation @s kello.entity.id = #global kello.entity.id

scoreboard players operation @s kello.decal.id = #selected kello.decal.id

execute if score #level_creation_mode kello.value matches 1 run function kello:tick/level/creation_mode
execute if score #ref_state kello.value matches 1 run scoreboard players operation @s kello.decal.state = #local kello.decal.state
execute if score #ref_rotation kello.value matches 1 run scoreboard players operation @s kello.decal.rot_mode = #local kello.decal.rot_mode


function kello:entity/decal/component/initialize/main



# Summon iteration

# scoreboard players set #iteration kello.value 32
# function kello:entity/decal/decwheel/spawn/small_decshaft_iter
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
execute if block ^ ^ ^-1 #kello:generic/iter_passable positioned ^ ^ ^-1 run function kello:entity/decal/decwheel/spawn/chunk/small_cogshaft/main