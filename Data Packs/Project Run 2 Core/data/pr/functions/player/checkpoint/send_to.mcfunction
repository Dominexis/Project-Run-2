# Initialize checkpoint score

scoreboard players set #boolean pr.value 0
execute unless score @s pr.plot = @s pr.plot run scoreboard players set #boolean pr.value 1
execute unless score @s pr.plot_previous = @s pr.plot_previous run scoreboard players set #boolean pr.value 1
execute unless score @s pr.plot_x = @s pr.plot_x run scoreboard players set #boolean pr.value 1
execute unless score @s pr.plot_z = @s pr.plot_z run scoreboard players set #boolean pr.value 1
execute unless score @s pr.checkpoint_y = @s pr.checkpoint_y run scoreboard players set #boolean pr.value 1
execute unless score @s pr.checkpoint_side = @s pr.checkpoint_side run scoreboard players set #boolean pr.value 1
execute if score #boolean pr.value matches 1 run function pr:player/checkpoint/lobby







# Teleport player to location

execute positioned 0 0 0 run function pr:player/checkpoint/x







# Reset checkpoint trigger

execute if score @s checkpoint matches 1.. run tellraw @s {"text":"You've been sent to the previous checkpoint","color":"gold"}
scoreboard players set @s checkpoint 0