# Add tag

tag @s add pr.plot_mover






# Get coordinates

data modify storage pr:data tag.Pos set from entity @s Pos
execute store result score #x pr.value run data get storage pr:data tag.Pos[0]
execute store result score #z pr.value run data get storage pr:data tag.Pos[2]

scoreboard players operation #side pr.value = #x pr.value
scoreboard players add #side pr.value 32768
scoreboard players operation #side pr.value /= #65536 pr.value
scoreboard players operation #x pr.value /= #96 pr.value
scoreboard players operation #z pr.value /= #96 pr.value
scoreboard players operation #x pr.value *= #96 pr.value
scoreboard players operation #z pr.value *= #96 pr.value

execute if score #side pr.value matches 0 run tag @s add pr.main_side
execute if score #side pr.value matches 1 run tag @s add pr.temp_side

data modify storage pr:data tag.Pos set value [0.0d,-64.0d,0.0d]
execute store result storage pr:data tag.Pos[0] double 1 run scoreboard players get #x pr.value
execute store result storage pr:data tag.Pos[2] double 1 run scoreboard players get #z pr.value
data modify entity @s Pos set from storage pr:data tag.Pos

scoreboard players operation @s pr.plot_x = #x pr.value
scoreboard players operation @s pr.plot_z = #z pr.value

scoreboard players add @s pr.plot_x 32768
scoreboard players add @s pr.plot_z 32768
scoreboard players operation @s pr.plot_x %= #65536 pr.value
scoreboard players operation @s pr.plot_z %= #65536 pr.value
scoreboard players remove @s pr.plot_x 32768
scoreboard players remove @s pr.plot_z 32768
scoreboard players operation @s pr.plot_x /= #96 pr.value
scoreboard players operation @s pr.plot_z /= #96 pr.value







# Forceload chunks

execute at @s run forceload add ~ ~ ~80 ~80
execute at @s[tag=pr.main_side] positioned ~065536 ~ ~ run forceload add ~ ~ ~80 ~80
execute at @s[tag=pr.temp_side] positioned ~-65536 ~ ~ run forceload add ~ ~ ~80 ~80