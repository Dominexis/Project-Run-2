tag @s remove kello.entity.target.new
tag @s add kello.entity.type.gear
tag @s add kello.decal.point
tag @s add kello.decal.component
tag @s add pr.ignore

execute if score #variant kello.value matches 0 run tag @s add kello.entity.type.gear_0
execute if score #variant kello.value matches 1 run tag @s add kello.entity.type.gear_1
execute if score #variant kello.value matches 2 run tag @s add kello.entity.type.gear_2
execute if score #variant kello.value matches 3 run tag @s add kello.entity.type.gear_3
execute if score #variant kello.value matches 4 run tag @s add kello.entity.type.gear_4
execute if score #variant kello.value matches 5 run tag @s add kello.entity.type.gear_5
execute if score #variant kello.value matches 6 run tag @s add kello.entity.type.gear_6
execute if score #variant kello.value matches 7 run tag @s add kello.entity.type.gear_7
execute if score #variant kello.value matches 8 run tag @s add kello.entity.type.gear_8


execute at @s on passengers run tp @s ~ ~ ~ ~ ~
execute on passengers run tag @s add pr.ignore
execute on passengers unless entity @s[tag=aj.animwheel.bone.root] run kill @s

scoreboard players add #global kello.entity.id 1
scoreboard players operation @s kello.entity.id = #global kello.entity.id

scoreboard players operation @s kello.decal.id = #selected kello.decal.id

execute if score #ref_rotation_speed kello.value matches 1 run scoreboard players operation @s kello.decal.rot_speed = #local kello.decal.rot_speed
execute if score #ref_rotation kello.value matches 1 run scoreboard players operation @s kello.decal.rot_mode = #local kello.decal.rot_mode
execute if score #ref_state kello.value matches 1 run scoreboard players operation @s kello.decal.state = #local kello.decal.state
scoreboard players operation @s kello.entity.timer = #rundelay kello.entity.timer
scoreboard players operation @s kello.entity.delay = #invdelay kello.entity.delay

execute if score #level_creation_mode kello.value matches 1 run function kello:tick/level/creation_mode

execute if score #override_brightness kello.value matches 1 on passengers if entity @s[type=minecraft:item_display] run data modify entity @s brightness set from storage kello:data tag.temp_spawnpoint.data.brightness

execute if entity @s[tag=kello.entity.type.animwheel] if score @s kello.decal.rot_mode matches 1 run function animated_java:animwheel/animations/flip/play


function kello:entity/decal/component/initialize/main
return 1