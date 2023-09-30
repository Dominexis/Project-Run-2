
scoreboard players remove #iteration kello.value 1
execute if score #barrier kello.decal matches 0 run setblock ~ ~ ~ air
execute if score #barrier kello.decal matches 1 run setblock ~ ~ ~ barrier
scoreboard players set #barrier kello.decal 0

execute if score #iteration kello.value matches 1.. positioned ~1 ~ ~ run function kello:entity/decal/component/chain_platform/spawn/iter/branch
execute if score #iteration kello.value matches 1.. positioned ~-1 ~ ~ run function kello:entity/decal/component/chain_platform/spawn/iter/branch
execute if score #iteration kello.value matches 1.. positioned ~ ~ ~1 run function kello:entity/decal/component/chain_platform/spawn/iter/branch
execute if score #iteration kello.value matches 1.. positioned ~ ~ ~-1 run function kello:entity/decal/component/chain_platform/spawn/iter/branch
execute if score #iteration kello.value matches 1.. positioned ~ ~1 ~ run function kello:entity/decal/component/chain_platform/spawn/iter/branch
execute if score #iteration kello.value matches 1.. positioned ~ ~-1 ~ run function kello:entity/decal/component/chain_platform/spawn/iter/branch