# Set vector from yaw and pitch

scoreboard players operation #input pr.value = #input_yaw pr.value
function pr:generic/trigonometry/sine
scoreboard players operation #output_vector_x pr.value = #output pr.value
scoreboard players operation #output_vector_x pr.value *= #-1 pr.value
function pr:generic/trigonometry/cosine
scoreboard players operation #output_vector_z pr.value = #output pr.value

scoreboard players operation #input pr.value = #input_pitch pr.value
function pr:generic/trigonometry/cosine
scoreboard players operation #output_vector_horizontal pr.value = #output pr.value
scoreboard players operation #output_vector_x pr.value *= #output pr.value
scoreboard players operation #output_vector_z pr.value *= #output pr.value
scoreboard players operation #output_vector_x pr.value /= #1000 pr.value
scoreboard players operation #output_vector_z pr.value /= #1000 pr.value
function pr:generic/trigonometry/sine
scoreboard players operation #output_vector_y pr.value = #output pr.value
scoreboard players operation #output_vector_y pr.value *= #-1 pr.value