# Get yaw from vector

scoreboard players operation #input_x pr.value = #input_vector_z pr.value
scoreboard players operation #input_y pr.value = #input_vector_x pr.value
scoreboard players operation #input_y pr.value *= #-1 pr.value
function pr:generic/trigonometry/arctangent
scoreboard players operation #output_yaw pr.value = #output pr.value







# Compute length of horizontal component of vector

scoreboard players operation #math_vector_x pr.value = #input_vector_x pr.value
scoreboard players operation #math_vector_y pr.value = #input_vector_z pr.value
scoreboard players operation #math_vector_x pr.value /= #scale_factor pr.value
scoreboard players operation #math_vector_y pr.value /= #scale_factor pr.value
scoreboard players operation #math_vector_x pr.value *= #math_vector_x pr.value
scoreboard players operation #math_vector_y pr.value *= #math_vector_y pr.value
scoreboard players operation #input pr.value = #math_vector_x pr.value
scoreboard players operation #input pr.value += #math_vector_y pr.value

function pr:generic/sqrt

scoreboard players operation #output pr.value *= #scale_factor pr.value







# Get pitch from vector

scoreboard players operation #input_x pr.value = #output pr.value
scoreboard players operation #input_y pr.value = #input_vector_y pr.value
scoreboard players operation #input_y pr.value *= #-1 pr.value
function pr:generic/trigonometry/arctangent
scoreboard players operation #output_pitch pr.value = #output pr.value