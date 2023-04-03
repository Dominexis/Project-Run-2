# Reset plot score

scoreboard players set @s plot 0







# Get coordinates

execute store result score #x pr.value run data get entity @s Pos[0]
execute store result score #z pr.value run data get entity @s Pos[2]

scoreboard players operation #zone pr.value = #x pr.value
scoreboard players add #zone pr.value 32768
scoreboard players operation #zone pr.value /= #65536 pr.value

scoreboard players add #x pr.value 32768
scoreboard players add #z pr.value 32768
scoreboard players operation #x pr.value %= #65536 pr.value
scoreboard players operation #z pr.value %= #65536 pr.value
scoreboard players remove #x pr.value 32768
scoreboard players remove #z pr.value 32768







# Check whether in the lobby or not

scoreboard players set #lobby pr.value 0
execute if score #x pr.value matches -96..-16 if score #z pr.value matches 0..80 run scoreboard players set #lobby pr.value 1







# Convert coordinates if not in the lobby

execute if score #lobby pr.value matches 0 run scoreboard players operation #x pr.value /= #96 pr.value
execute if score #lobby pr.value matches 0 run scoreboard players operation #z pr.value /= #96 pr.value
execute if score #lobby pr.value matches 0 run scoreboard players operation #x pr.value *= #4 pr.value
execute if score #lobby pr.value matches 0 run scoreboard players operation #z pr.value *= #4 pr.value
execute if score #lobby pr.value matches 0 run scoreboard players remove #x pr.value 56
execute if score #lobby pr.value matches 0 run scoreboard players add #z pr.value 40
execute if score #lobby pr.value matches 0 run scoreboard players set #y pr.value -45







# Convert coordinates if in the lobby

execute if score #lobby pr.value matches 1 run scoreboard players add #x pr.value 56
execute if score #lobby pr.value matches 1 run scoreboard players remove #z pr.value 40
execute if score #lobby pr.value matches 1 run scoreboard players add #x pr.value 1
execute if score #lobby pr.value matches 1 run scoreboard players add #z pr.value 1
execute if score #lobby pr.value matches 1 run scoreboard players operation #x pr.value /= #4 pr.value
execute if score #lobby pr.value matches 1 run scoreboard players operation #z pr.value /= #4 pr.value
execute if score #lobby pr.value matches 1 run scoreboard players operation #x pr.value *= #96 pr.value
execute if score #lobby pr.value matches 1 run scoreboard players operation #z pr.value *= #96 pr.value
execute if score #lobby pr.value matches 1 run scoreboard players add #x pr.value 40
execute if score #lobby pr.value matches 1 run scoreboard players add #z pr.value 40
execute if score #lobby pr.value matches 1 run scoreboard players set #y pr.value 32







# Move player to coordinates

execute if score #zone pr.value matches 1 run scoreboard players add #x pr.value 65536

tag @s add pr.plot_warp
summon marker ~ ~ ~ {Tags:["pr.plot_warp"]}
execute as @e[type=marker,tag=pr.plot_warp] run function pr:player/plot/warp/position
tag @s remove pr.plot_warp

execute if score #lobby pr.value matches 0 run tellraw @s {"text":"You've been warped to the lobby","color":"gold"}
execute if score #lobby pr.value matches 1 run tellraw @s {"text":"You've been warped to the plot","color":"gold"}