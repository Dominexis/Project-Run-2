# Compute length of vector

scoreboard players operation #math_vector_x kello.value = #input_vector_x kello.value
scoreboard players operation #math_vector_y kello.value = #input_vector_y kello.value
scoreboard players operation #math_vector_z kello.value = #input_vector_z kello.value
scoreboard players operation #math_vector_x kello.value /= #scale_factor kello.value
scoreboard players operation #math_vector_y kello.value /= #scale_factor kello.value
scoreboard players operation #math_vector_z kello.value /= #scale_factor kello.value
scoreboard players operation #math_vector_x kello.value *= #math_vector_x kello.value
scoreboard players operation #math_vector_y kello.value *= #math_vector_y kello.value
scoreboard players operation #math_vector_z kello.value *= #math_vector_z kello.value
scoreboard players operation #input kello.value = #math_vector_x kello.value
scoreboard players operation #input kello.value += #math_vector_y kello.value
scoreboard players operation #input kello.value += #math_vector_z kello.value

function kello:generic/square_root

scoreboard players operation #output kello.value *= #scale_factor kello.value