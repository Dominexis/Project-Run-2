# Get length of vector

function kello:generic/vector/length_3d







# Normalize vector

scoreboard players operation #output_vector_x kello.value = #input_vector_x kello.value
scoreboard players operation #output_vector_y kello.value = #input_vector_y kello.value
scoreboard players operation #output_vector_z kello.value = #input_vector_z kello.value
scoreboard players operation #output_vector_x kello.value *= #1000 kello.value
scoreboard players operation #output_vector_y kello.value *= #1000 kello.value
scoreboard players operation #output_vector_z kello.value *= #1000 kello.value
scoreboard players operation #output_vector_x kello.value /= #output kello.value
scoreboard players operation #output_vector_y kello.value /= #output kello.value
scoreboard players operation #output_vector_z kello.value /= #output kello.value