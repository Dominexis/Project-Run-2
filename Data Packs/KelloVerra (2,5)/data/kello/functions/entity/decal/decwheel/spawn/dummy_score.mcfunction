function kello:entity/decal/init

tag @s add pr.ignore
tag @s add kello.entity
tag @s add kello.decal
# tag @s add kello.exclude
tag @s add kello.entity.type.cogwheel
tag @s add kello.decal.mech_spawn_point





# Assign entity IDs

execute at @s on passengers run tp @s ~ ~ ~ ~ ~





execute if score #variant kello.value matches 0 run tag @s add kello.entity.type.small_decwheel_gear
execute if score #variant kello.value matches 1 run tag @s add kello.entity.type.large_decwheel_gear





# Summon iteration

# scoreboard players set #iteration kello.value 32
# function kello:entity/decal/decwheel/spawn/small_decshaft_iter
# execute if block ^ ^ ^-1 #kello:generic/iter_passable positioned ^ ^ ^-1 run function kello:entity/decal/decwheel/spawn/chunk/small_shaft/main