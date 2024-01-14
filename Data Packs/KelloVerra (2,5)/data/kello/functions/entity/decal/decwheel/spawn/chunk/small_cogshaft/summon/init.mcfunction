tp @s ~ ~ ~ ~ ~

scoreboard players operation @s kello.entity.id = #global kello.entity.id
scoreboard players operation @s kello.decal.id = #selected kello.decal.id

execute if score #level_creation_mode kello.value matches 1 run function kello:tick/level/creation_mode
execute if score #ref_state kello.value matches 1 run scoreboard players operation @s kello.decal.state = #local kello.decal.state

function kello:entity/decal/component/initialize/main
return 1