# Scores

scoreboard players set #chunk_counter kello.value -1
scoreboard players set #chunk_total kello.value 0

scoreboard players set #iteration kello.value 32

scoreboard players add #global kello.entity.id 1


# Controller

scoreboard players set #controller kello.value -1

# NOTE : PR.TARGET WILL BE ADDED, REMOVED FOR DEBUGGING
execute as @e[type=minecraft:item_display,tag=kello.entity.type.decal_controller] if score @s kello.decal.id = #selected kello.decal.id run function kello:entity/decal/component/initialize/controller

execute if score #controller kello.value matches 1 positioned ~ ~.125 ~ run function kello:entity/placedicator/small/spawn/main


# Iteration

function kello:entity/decal/decwheel/spawn/chunk/small_shaft/iter
return 1