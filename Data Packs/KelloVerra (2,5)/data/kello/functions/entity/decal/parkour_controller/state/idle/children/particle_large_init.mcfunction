scoreboard players set #input pr.value 359
function pr:generic/rng/lcg

execute store result entity @s Rotation[0] float 1 run scoreboard players get #output pr.value

execute rotated as @s run tp @s ~ ~ ~ ~ 0

execute rotated as @s run function kello:entity/decal/parkour_controller/state/idle/children/particle_large

kill