# Compute length of vector

scoreboard players operation #math_vector_x pr.value = #input_vector_x pr.value
scoreboard players operation #math_vector_y pr.value = #input_vector_y pr.value
scoreboard players operation #math_vector_z pr.value = #input_vector_z pr.value
scoreboard players operation #math_vector_x pr.value /= #scale_factor pr.value
scoreboard players operation #math_vector_y pr.value /= #scale_factor pr.value
scoreboard players operation #math_vector_z pr.value /= #scale_factor pr.value
scoreboard players operation #math_vector_x pr.value *= #math_vector_x pr.value
scoreboard players operation #math_vector_y pr.value *= #math_vector_y pr.value
scoreboard players operation #math_vector_z pr.value *= #math_vector_z pr.value
scoreboard players operation #input pr.value = #math_vector_x pr.value
scoreboard players operation #input pr.value += #math_vector_y pr.value
scoreboard players operation #input pr.value += #math_vector_z pr.value

function pr:generic/sqrt

scoreboard players operation #output pr.value *= #scale_factor pr.value