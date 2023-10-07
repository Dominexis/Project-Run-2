scoreboard players set #controller kello.value -1

# NOTE : PR.TARGET WILL BE ADDED, REMOVED FOR DEBUGGING
execute as @e[type=item_display,tag=kello.entity.type.decal_controller] if score @s kello.decal.id = #selected kello.decal.id run function kello:entity/decal/component/initialize/controller

execute if score #controller kello.value matches 0 run function kello:entity/decal/contraption_controller/initialize/children
execute if score #controller kello.value matches 1 run function kello:entity/decal/parkour_controller/initialize/children
execute if score #controller kello.value matches 2 run function kello:entity/decal/loading_controller/initialize/children