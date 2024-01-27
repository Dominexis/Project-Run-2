# Get coordinates

data modify storage pr:data tag.Pos set from entity @s Pos
execute store result score #x pr.value run data get storage pr:data tag.Pos[0]
execute store result score #z pr.value run data get storage pr:data tag.Pos[2]

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
execute if score #x pr.value matches -104..-8 if score #z pr.value matches -8..72 run scoreboard players set #lobby pr.value 1







# Convert coordinates if not in the lobby

execute if score #lobby pr.value matches 0 run scoreboard players add #x pr.value 8
execute if score #lobby pr.value matches 0 run scoreboard players add #z pr.value 8
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
summon minecraft:marker ~ ~ ~ {Tags:["pr.plot_warp"]}
execute as @e[type=minecraft:marker,tag=pr.plot_warp] run function pr:player/plot/warp/position
tag @s remove pr.plot_warp



scoreboard players add #x pr.value 32768
scoreboard players add #z pr.value 32768
scoreboard players operation #x pr.value %= #65536 pr.value
scoreboard players operation #z pr.value %= #65536 pr.value
scoreboard players remove #x pr.value 32768
scoreboard players remove #z pr.value 32768
scoreboard players operation #x pr.value /= #96 pr.value
scoreboard players operation #z pr.value /= #96 pr.value

scoreboard players operation #math_x pr.value = #x pr.value
scoreboard players add #math_x pr.value 16
scoreboard players operation #math_z pr.value = #z pr.value
scoreboard players add #math_z pr.value 16
scoreboard players operation #math_z pr.value *= #64 pr.value

scoreboard players operation #plot pr.value = #math_x pr.value
scoreboard players operation #plot pr.value += #math_z pr.value

scoreboard players set @s pr.plot_previous -1
scoreboard players operation @s pr.plot = #plot pr.value
scoreboard players operation @s pr.plot_x = #x pr.value
scoreboard players operation @s pr.plot_z = #z pr.value

execute if score #lobby pr.value matches 1 run tag @s add pr.was_in_lobby
execute if score #lobby pr.value matches 1 run function pr:plot/enter
execute if score #lobby pr.value matches 1 run function pr:player/checkpoint/send_to

execute if entity @s[team=pr.spectator] run scoreboard players operation @s pr.plot = #spawn_plot pr.value
execute if entity @s[team=pr.spectator] run scoreboard players operation @s pr.plot_previous = @s pr.plot
execute if entity @s[team=pr.spectator] run function pr:player/plot/coords_from_id



execute if score #lobby pr.value matches 0 run tellraw @s {"text":"You've been warped to the lobby","color":"gold","type":"text"}
execute if score #lobby pr.value matches 1 run tellraw @s {"text":"You've been warped to the plot","color":"gold","type":"text"}







# Reset plot score

scoreboard players set @s plot 0
return 1