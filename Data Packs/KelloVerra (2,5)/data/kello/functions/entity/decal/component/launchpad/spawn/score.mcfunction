# Assign scores

scoreboard players set @s kello.decal.active 1

scoreboard players set @s aj.launchpad.animation.shoot.local_anim_time 15

scoreboard players operation @s kello.entity.launch_power = #minimal_launchpad_power kello.value
execute if score #uninstantiate kello.value matches 1 run scoreboard players operation @s kello.entity.launch_power = #defined_power kello.value

execute if score #level_creation_mode kello.value matches 1 run function kello:tick/level/creation_mode
execute if score #level_creation_mode kello.value matches 1 run scoreboard players operation @s kello.entity.checkpoint.id = #init kello.entity.checkpoint.id

function kello:entity/decal/init




tp @s ~ ~ ~ ~ ~
execute on passengers run tp @s ~ ~ ~ ~ ~


# Assign tags

tag @s remove kello.entity.target.new
tag @s add kello.entity.ticking
tag @s add kello.decal.component
tag @s add kello.decal.controlled



# Assign entity IDs

scoreboard players add #global kello.entity.id 1
scoreboard players operation @s kello.entity.id = #global kello.entity.id

scoreboard players operation @s kello.decal.id = #selected kello.decal.id
return 1