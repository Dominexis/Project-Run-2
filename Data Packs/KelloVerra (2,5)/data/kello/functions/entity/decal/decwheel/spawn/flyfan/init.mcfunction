tag @s remove kello.entity.target.new
tag @s add kello.entity.type.flyfan
tag @s add kello.decal.point
tag @s add kello.decal.component

execute if score #variant kello.value matches 0 run tag @s add kello.entity.type.flyfan_0
execute if score #variant kello.value matches 1 run tag @s add kello.entity.type.flyfan_1
execute if score #variant kello.value matches 2 run tag @s add kello.entity.type.flyfan_2
execute if score #variant kello.value matches 3 run tag @s add kello.entity.type.flyfan_3
execute if score #variant kello.value matches 4 run tag @s add kello.entity.type.flyfan_4
execute if score #variant kello.value matches 5 run tag @s add kello.entity.type.flyfan_5
execute if score #variant kello.value matches 6 run tag @s add kello.entity.type.flyfan_6
execute if score #variant kello.value matches 7 run tag @s add kello.entity.type.flyfan_7
execute if score #variant kello.value matches 8 run tag @s add kello.entity.type.flyfan_8


execute at @s on passengers run tp @s ~ ~ ~ ~ ~

scoreboard players add #global kello.entity.id 1
scoreboard players operation @s kello.entity.id = #global kello.entity.id

scoreboard players operation @s kello.decal.id = #selected kello.decal.id

execute if score #ref_rotation_speed kello.value matches 1 run scoreboard players operation @s kello.decal.rot_speed = #local kello.decal.rot_speed
execute if score #ref_rotation kello.value matches 1 run scoreboard players operation @s kello.decal.rot_mode = #local kello.decal.rot_mode
execute if score #ref_state kello.value matches 1 run scoreboard players operation @s kello.decal.state = #local kello.decal.state
scoreboard players operation @s kello.entity.timer = #rundelay kello.entity.timer
scoreboard players operation @s kello.entity.delay = #invdelay kello.entity.delay

execute if score #level_creation_mode kello.value matches 1 run scoreboard players operation @s kello.level.id = #local kello.level.id

execute if score #override_brightness kello.value matches 1 on passengers if entity @s[type=item_display] run data modify entity @s brightness set from storage kello:data tag.temp_spawnpoint.data.brightness


function kello:entity/decal/component/initialize/main