# Get quadrant of inputs

scoreboard players set #quadrant_x pr.value 1
execute if score #input_x pr.value matches ..-1 run scoreboard players set #quadrant_x pr.value -1
execute if score #input_x pr.value matches ..-1 run scoreboard players operation #input_x pr.value *= #-1 pr.value

scoreboard players set #quadrant_y pr.value 1
execute if score #input_y pr.value matches ..-1 run scoreboard players set #quadrant_y pr.value -1
execute if score #input_y pr.value matches ..-1 run scoreboard players operation #input_y pr.value *= #-1 pr.value







# Switch around inputs if ratio demands it

scoreboard players set #arctangent_swap_boolean pr.value 0
execute if score #input_x pr.value < #input_y pr.value run scoreboard players set #arctangent_swap_boolean pr.value 1
execute if score #input_x pr.value < #input_y pr.value run scoreboard players operation #input_x pr.value >< #input_y pr.value







# Compute function

scoreboard players operation #math_trigonometry_0 pr.value = #input_y pr.value
scoreboard players operation #math_trigonometry_0 pr.value *= #1000 pr.value
scoreboard players operation #math_trigonometry_0 pr.value /= #input_x pr.value
scoreboard players operation #math_trigonometry_1 pr.value = #math_trigonometry_0 pr.value
scoreboard players operation #math_trigonometry_0 pr.value *= #math_trigonometry_0 pr.value
scoreboard players operation #math_trigonometry_0 pr.value /= #1000 pr.value

scoreboard players set #math_trigonometry_2 pr.value 776
scoreboard players set #math_trigonometry_3 pr.value -2874
scoreboard players set #math_trigonometry_4 pr.value 9951

scoreboard players operation #math_trigonometry_4 pr.value *= #math_trigonometry_1 pr.value
scoreboard players operation #math_trigonometry_4 pr.value /= #10000 pr.value

scoreboard players operation #math_trigonometry_1 pr.value *= #math_trigonometry_0 pr.value
scoreboard players operation #math_trigonometry_1 pr.value /= #1000 pr.value

scoreboard players operation #math_trigonometry_3 pr.value *= #math_trigonometry_1 pr.value
scoreboard players operation #math_trigonometry_3 pr.value /= #10000 pr.value

scoreboard players operation #math_trigonometry_1 pr.value *= #math_trigonometry_0 pr.value
scoreboard players operation #math_trigonometry_1 pr.value /= #1000 pr.value

scoreboard players operation #math_trigonometry_2 pr.value *= #math_trigonometry_1 pr.value
scoreboard players operation #math_trigonometry_2 pr.value /= #10000 pr.value

scoreboard players operation #output pr.value = #math_trigonometry_2 pr.value
scoreboard players operation #output pr.value += #math_trigonometry_3 pr.value
scoreboard players operation #output pr.value += #math_trigonometry_4 pr.value

scoreboard players operation #output pr.value *= #900 pr.value
scoreboard players operation #output pr.value /= #1570 pr.value







# Adjust for swap and quadrant

execute if score #arctangent_swap_boolean pr.value matches 1 run scoreboard players operation #output pr.value *= #-1 pr.value
execute if score #arctangent_swap_boolean pr.value matches 1 run scoreboard players add #output pr.value 900

execute if score #quadrant_x pr.value matches -1 if score #quadrant_y pr.value matches -1 run scoreboard players remove #output pr.value 1800

execute if score #quadrant_x pr.value matches -1 if score #quadrant_y pr.value matches 01 run scoreboard players operation #output pr.value *= #-1 pr.value
execute if score #quadrant_x pr.value matches -1 if score #quadrant_y pr.value matches 01 run scoreboard players add #output pr.value 1800

execute if score #quadrant_x pr.value matches 01 if score #quadrant_y pr.value matches -1 run scoreboard players operation #output pr.value *= #-1 pr.value
return 1