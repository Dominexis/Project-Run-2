# Calc

scoreboard players operation #input_vector_x kello.value = @s kello.decal.rot_x
scoreboard players operation #input_vector_y kello.value = @s kello.decal.rot_y
scoreboard players operation #input_vector_z kello.value = @s kello.decal.rot_z
scoreboard players set #scale_factor kello.value 1
function kello:generic/vector/normalize_3d

scoreboard players operation #axis_x kello.value = #output_vector_x kello.value
scoreboard players operation #axis_y kello.value = #output_vector_y kello.value
scoreboard players operation #axis_z kello.value = #output_vector_z kello.value
scoreboard players operation #axis_angle kello.value = #output kello.value

scoreboard players operation #axis_angle kello.value *= #PI kello.value
scoreboard players operation #axis_angle kello.value /= #180 kello.value



# Storage

data merge storage kello:value {tag:{decal:{transformation:{left_rotation:{axis:[0f,0f,0f],angle:0f}}}}}




# Set storage

execute store result storage kello:value tag.decal.transformation.left_rotation.axis[0] float 000.001 run scoreboard players get #axis_x kello.value
execute store result storage kello:value tag.decal.transformation.left_rotation.axis[1] float 000.001 run scoreboard players get #axis_y kello.value
execute store result storage kello:value tag.decal.transformation.left_rotation.axis[2] float 000.001 run scoreboard players get #axis_z kello.value
execute store result storage kello:value tag.decal.transformation.left_rotation.angle float 000.001 run scoreboard players get #axis_angle kello.value