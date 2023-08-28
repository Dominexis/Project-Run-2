execute if entity @s[tag=!inquognito.gun.frostbite] run particle minecraft:dust_color_transition 1.0 0.75 0.0 1.0 1.0 1.0 0.0 ~ ~ ~ 0.05 0.05 0.05 0.0 15 force @a
execute if entity @s[tag=inquognito.gun.frostbite] run particle minecraft:dust_color_transition 0.0 0.75 1.0 1.0 1.0 1.0 1.0 ~ ~ ~ 0.05 0.05 0.05 0.0 15 force @a

execute unless block ~ ~ ~ #inquognito:passthrough run kill @s

execute positioned ~-0.15 ~-0.15 ~-0.15 as @e[type=#inquognito:enemies,dx=0] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0] run function inquognito:logic/abilities/gun/hit

teleport @s ^ ^ ^0.25
