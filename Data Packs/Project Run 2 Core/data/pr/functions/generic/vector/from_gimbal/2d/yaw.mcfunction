# Set vector from yaw

scoreboard players operation #input pr.value = #input_yaw pr.value
function pr:generic/trigonometry/sine
scoreboard players operation #output_vector_x pr.value = #output pr.value
scoreboard players operation #output_vector_x pr.value *= #-1 pr.value
function pr:generic/trigonometry/cosine
scoreboard players operation #output_vector_z pr.value = #output pr.value