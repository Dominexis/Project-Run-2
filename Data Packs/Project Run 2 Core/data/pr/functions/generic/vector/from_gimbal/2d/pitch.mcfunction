# Set vector from pitch

scoreboard players operation #input pr.value = #input_pitch pr.value
function pr:generic/trigonometry/cosine
scoreboard players operation #output_vector_x pr.value = #output pr.value
function pr:generic/trigonometry/sine
scoreboard players operation #output_vector_y pr.value = #output pr.value
scoreboard players operation #output_vector_y pr.value *= #-1 pr.value
return 1