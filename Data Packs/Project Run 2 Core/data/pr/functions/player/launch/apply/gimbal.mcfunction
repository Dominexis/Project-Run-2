# Compute parameters

scoreboard players operation #input_yaw pr.value = #entity_yaw pr.value
scoreboard players operation #input_pitch pr.value = #entity_pitch pr.value
scoreboard players operation #motion_vector_magnitude pr.value = #entity_mot pr.value

function pr:generic/vector/from_gimbal/3d
scoreboard players operation #motion_vector_x pr.value = #output_vector_x pr.value
scoreboard players operation #motion_vector_y pr.value = #output_vector_y pr.value
scoreboard players operation #motion_vector_z pr.value = #output_vector_z pr.value

scoreboard players operation #horizontal_magnitude pr.value = #output_vector_horizontal pr.value
scoreboard players operation #horizontal_magnitude pr.value *= #motion_vector_magnitude pr.value
scoreboard players operation #horizontal_magnitude pr.value /= #1000 pr.value
function pr:generic/vector/from_gimbal/2d/yaw
scoreboard players operation #horizontal_x pr.value = #output_vector_x pr.value
scoreboard players operation #horizontal_z pr.value = #output_vector_z pr.value







# Perform launch

execute at @s run function pr:player/launch/main