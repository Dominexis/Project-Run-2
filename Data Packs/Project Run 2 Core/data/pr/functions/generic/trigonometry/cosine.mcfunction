# Transform input

scoreboard players operation #output pr.value = #input pr.value
scoreboard players remove #output pr.value 900
scoreboard players operation #output pr.value %= #1800 pr.value
scoreboard players remove #output pr.value 900







# Compute Bhaskara's approximation

scoreboard players operation #output pr.value *= #output pr.value
scoreboard players operation #math_trigonometry_0 pr.value = #output pr.value
scoreboard players add #math_trigonometry_0 pr.value 3240000
scoreboard players operation #math_trigonometry_0 pr.value /= #1000 pr.value
scoreboard players operation #output pr.value *= #4 pr.value
scoreboard players operation #output pr.value *= #-1 pr.value
scoreboard players add #output pr.value 3240000
scoreboard players operation #output pr.value /= #math_trigonometry_0 pr.value







# Apply sign

scoreboard players operation #math_trigonometry_0 pr.value = #input pr.value
scoreboard players add #math_trigonometry_0 pr.value 900
scoreboard players operation #math_trigonometry_0 pr.value %= #3600 pr.value
execute if score #math_trigonometry_0 pr.value matches 1800.. run scoreboard players operation #output pr.value *= #-1 pr.value