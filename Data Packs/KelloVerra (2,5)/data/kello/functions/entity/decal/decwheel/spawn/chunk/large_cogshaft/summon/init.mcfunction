tp @s ~ ~ ~ ~ ~

scoreboard players operation @s kello.entity.id = #global kello.entity.id
scoreboard players operation @s kello.decal.id = #selected kello.decal.id

execute if score #level_creation_mode kello.value matches 1 run scoreboard players operation @s kello.level.id = #local kello.level.id
execute if score #ref_state kello.value matches 1 run scoreboard players operation @s kello.decal.state = #local kello.decal.state

data merge entity @s {brightness:{sky:2,block:14}}

function kello:entity/decal/component/initialize/main