# Get time

execute store result score #world_border_diameter pr.value run worldborder get

scoreboard players operation #time_differential pr.value = #world_border_diameter pr.value
scoreboard players operation #time_differential pr.value -= #previous_world_border_diameter pr.value

execute if score #time_differential pr.value matches 0..999 run scoreboard players operation #time pr.value += #time_differential pr.value

scoreboard players operation #previous_world_border_diameter pr.value = #world_border_diameter pr.value
return 1