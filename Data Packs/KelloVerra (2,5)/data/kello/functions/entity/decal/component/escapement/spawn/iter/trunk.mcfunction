
scoreboard players remove #iteration kello.value 1
setblock ~ ~ ~ air

execute if score #iteration kello.value matches 1.. positioned ~1 ~ ~ run function kello:entity/decal/component/escapement/spawn/iter/branch
execute if score #iteration kello.value matches 1.. positioned ~-1 ~ ~ run function kello:entity/decal/component/escapement/spawn/iter/branch
execute if score #iteration kello.value matches 1.. positioned ~ ~ ~1 run function kello:entity/decal/component/escapement/spawn/iter/branch
execute if score #iteration kello.value matches 1.. positioned ~ ~ ~-1 run function kello:entity/decal/component/escapement/spawn/iter/branch
execute if score #iteration kello.value matches 1.. positioned ~ ~1 ~ run function kello:entity/decal/component/escapement/spawn/iter/branch
execute if score #iteration kello.value matches 1.. positioned ~ ~-1 ~ run function kello:entity/decal/component/escapement/spawn/iter/branch