# Check that both plots are loaded

scoreboard players set #loaded_plots pr.value 0
function pr:plot/move/load_check
execute if entity @s[tag=pr.main_side] positioned ~065536 ~ ~ run function pr:plot/move/load_check
execute if entity @s[tag=pr.temp_side] positioned ~-65536 ~ ~ run function pr:plot/move/load_check
execute if score #loaded_plots pr.value matches 2.. run scoreboard players add @s pr.time 1
execute if score @s pr.time matches 10.. run function pr:plot/move/move