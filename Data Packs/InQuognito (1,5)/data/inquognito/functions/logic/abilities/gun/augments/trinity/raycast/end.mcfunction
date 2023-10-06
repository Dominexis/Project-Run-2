execute unless entity @s[tag=inquognito.gun.frostbite] run particle minecraft:dust_color_transition 1.0 0.75 0.0 1.25 1.0 1.0 0.75 ~ ~ ~ 0.0 0.0 0.0 0.0 3 force @a
execute if entity @s[tag=inquognito.gun.frostbite] run particle minecraft:dust_color_transition 0.0 0.75 1.0 1.0 1.0 1.0 0.75 ~ ~ ~ 0.0 0.0 0.0 0.0 3 force @a

execute positioned ~-0.15 ~-0.15 ~-0.15 as @e[type=#inquognito:enemies,dx=0] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0] run function inquognito:logic/abilities/gun/augments/trinity/hit

execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[tag=inquognito.target.small,dx=0] run function inquognito:logic/plot/targets/activate
execute positioned ~-2.5 ~-2.5 ~-2.5 as @e[tag=inquognito.target.large,dx=4,dy=4,dz=4] run function inquognito:logic/plot/targets/activate
