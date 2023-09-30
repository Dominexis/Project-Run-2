execute store result score @s cobra2.rot run data get entity @s Rotation[0]
scoreboard players operation @s cobra2.rot -= 90 cobra2.const
execute at @s run summon minecraft:marker ~ ~ ~ {Tags:[pr.target,cobra2.m]}
tp @e[tag=cobra2.m] @s
execute store result entity @e[tag=cobra2.m,limit=1] Rotation[0] float 1 run scoreboard players get @s cobra2.rot
tp @s @e[tag=cobra2.m,limit=1]

kill @e[tag=cobra2.m]
tag @s add cobra2.turned
tag @s remove cobra2.has_boots
