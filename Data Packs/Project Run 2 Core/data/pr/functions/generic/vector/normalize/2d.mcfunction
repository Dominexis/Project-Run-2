# Get length of vector

function pr:generic/vector/length/2d







# Normalize vector

scoreboard players operation #output_vector_x pr.value = #input_vector_x pr.value
scoreboard players operation #output_vector_y pr.value = #input_vector_y pr.value
scoreboard players operation #output_vector_x pr.value *= #1000 pr.value
scoreboard players operation #output_vector_y pr.value *= #1000 pr.value
scoreboard players operation #output_vector_x pr.value /= #output pr.value
scoreboard players operation #output_vector_y pr.value /= #output pr.value
return 1