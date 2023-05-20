# Spawn creepers

scoreboard players set #scale_factor pr.value 1

scoreboard players operation #input_vector_x pr.value = #creeper_1_x pr.value
scoreboard players operation #input_vector_y pr.value = #creeper_1_y pr.value
scoreboard players operation #input_vector_z pr.value = #creeper_1_z pr.value
function pr:generic/vector/to_gimbal/3d
scoreboard players operation #entity_yaw pr.value = #output_yaw pr.value
scoreboard players operation #entity_pitch pr.value = #output_pitch pr.value

data modify storage pr:data tag set value {Rotation:[0.0f,0.0f]}
execute store result storage pr:data tag.Rotation[0] float 0.1 run scoreboard players get #entity_yaw pr.value
execute store result storage pr:data tag.Rotation[1] float 0.1 run scoreboard players get #entity_pitch pr.value
data modify entity @s Rotation set from storage pr:data tag.Rotation

scoreboard players operation #creepers_left pr.value = #creeper_count pr.value
execute at @s positioned ^ ^ ^0.01 run function pr:player/launch/spawn/creeper



scoreboard players operation #input_vector_x pr.value = #creeper_2_x pr.value
scoreboard players operation #input_vector_y pr.value = #creeper_2_y pr.value
scoreboard players operation #input_vector_z pr.value = #creeper_2_z pr.value
function pr:generic/vector/to_gimbal/3d
scoreboard players operation #entity_yaw pr.value = #output_yaw pr.value
scoreboard players operation #entity_pitch pr.value = #output_pitch pr.value

data modify storage pr:data tag set value {Rotation:[0.0f,0.0f]}
execute store result storage pr:data tag.Rotation[0] float 0.1 run scoreboard players get #entity_yaw pr.value
execute store result storage pr:data tag.Rotation[1] float 0.1 run scoreboard players get #entity_pitch pr.value
data modify entity @s Rotation set from storage pr:data tag.Rotation

scoreboard players operation #creepers_left pr.value = #creeper_count pr.value
execute at @s positioned ^ ^ ^0.01 run function pr:player/launch/spawn/creeper







# Assign creeper IDs

execute at @s positioned ~ ~8192 ~ run scoreboard players operation @e[type=creeper,distance=..4,tag=pr.entity.target.launch] pr.id = #local pr.id
execute at @s positioned ~ ~8192 ~ run tag @e[type=creeper,distance=..4,tag=pr.launch] remove pr.entity.target.launch







# Terminate

kill @s