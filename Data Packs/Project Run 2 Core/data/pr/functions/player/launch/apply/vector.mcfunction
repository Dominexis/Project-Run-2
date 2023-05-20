# Compute parameters

scoreboard players set #scale_factor pr.value 1

scoreboard players operation #input_vector_x pr.value = #entity_mot_x pr.value
scoreboard players operation #input_vector_y pr.value = #entity_mot_y pr.value
scoreboard players operation #input_vector_z pr.value = #entity_mot_z pr.value
function pr:generic/vector/normalize/3d
scoreboard players operation #motion_vector_magnitude pr.value = #output pr.value
scoreboard players operation #motion_vector_x pr.value = #output_vector_x pr.value
scoreboard players operation #motion_vector_y pr.value = #output_vector_y pr.value
scoreboard players operation #motion_vector_z pr.value = #output_vector_z pr.value
execute if score #motion_vector_magnitude pr.value matches 0 run scoreboard players set #motion_vector_y pr.value 1000

scoreboard players operation #input_vector_x pr.value = #entity_mot_x pr.value
scoreboard players operation #input_vector_y pr.value = #entity_mot_z pr.value
function pr:generic/vector/normalize/2d
scoreboard players operation #horizontal_magnitude pr.value = #output pr.value
scoreboard players operation #horizontal_x pr.value = #output_vector_x pr.value
scoreboard players operation #horizontal_z pr.value = #output_vector_y pr.value
execute if score #horizontal_magnitude pr.value matches 0 run scoreboard players set #horizontal_x pr.value 1000







# Perform launch

execute at @s run function pr:player/launch/main