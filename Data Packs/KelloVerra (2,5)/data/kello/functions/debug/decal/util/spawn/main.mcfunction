scoreboard players set #successcount kello.value 0

# Orientation sensitive decals
execute if score #decal kello.value matches 0000..0999 run function kello:debug/decal/util/spawn/orient
# Wall sensitive decals
execute if score #decal kello.value matches 1000..1999 run function kello:debug/decal/util/spawn/wall
# Plain decals
execute if score #decal kello.value matches 2000..2999 positioned ~ ~ ~ rotated 0 0 run function kello:debug/decal/util/spawn/verify/main
# Cardinal decals
execute if score #decal kello.value matches 3000..3999 run function kello:debug/decal/util/spawn/cardinal

tp @s[tag=kello.entity.decal_spawner] ~ -2000 ~