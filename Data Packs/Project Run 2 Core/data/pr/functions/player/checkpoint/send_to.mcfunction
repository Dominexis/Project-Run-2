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

ride @s dismount
execute if entity @s[tag=!pr.temp_checkpoint] positioned 0 0 0 run function pr:player/checkpoint/x
execute if entity @s[tag=pr.temp_checkpoint] run function pr:player/checkpoint/temp/main







# Reset checkpoint trigger

execute if score @s checkpoint matches 1.. run tellraw @s {"text":"You've been sent to the previous checkpoint","color":"gold","type":"text"}
scoreboard players set @s checkpoint 0

execute at @s align xyz run spawnpoint @s ~0.5 ~ ~0.5 ~







# Set cooldown

scoreboard players set @s pr.checkpoint_cooldown 20







# Run recall function

execute at @s[team=pr.player] run function pr:player/checkpoint/recall
return 1