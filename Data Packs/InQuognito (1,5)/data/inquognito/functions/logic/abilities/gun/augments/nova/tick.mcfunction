particle minecraft:dust_color_transition 0.2 0.2 0.2 1.5 0.5 0.5 0.5 ~ ~1 ~ 0.2 0.2 0.2 0.0 2 normal @a

execute unless block ~-0.2 ~-0.1 ~-0.2 #inquognito:passthrough run function inquognito:logic/abilities/gun/augments/nova/collide/block
execute unless block ~-0.2 ~-0.1 ~ #inquognito:passthrough run function inquognito:logic/abilities/gun/augments/nova/collide/block
execute unless block ~-0.2 ~-0.1 ~0.2 #inquognito:passthrough run function inquognito:logic/abilities/gun/augments/nova/collide/block
execute unless block ~ ~-0.1 ~-0.2 #inquognito:passthrough run function inquognito:logic/abilities/gun/augments/nova/collide/block
execute unless block ~ ~-0.1 ~ #inquognito:passthrough run function inquognito:logic/abilities/gun/augments/nova/collide/block
execute unless block ~ ~-0.1 ~0.2 #inquognito:passthrough run function inquognito:logic/abilities/gun/augments/nova/collide/block
execute unless block ~0.2 ~-0.1 ~-0.2 #inquognito:passthrough run function inquognito:logic/abilities/gun/augments/nova/collide/block
execute unless block ~0.2 ~-0.1 ~ #inquognito:passthrough run function inquognito:logic/abilities/gun/augments/nova/collide/block
execute unless block ~0.2 ~-0.1 ~0.2 #inquognito:passthrough run function inquognito:logic/abilities/gun/augments/nova/collide/block

execute positioned ~-0.15 ~-0.15 ~-0.15 as @e[type=#inquognito:enemies,dx=0] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0] run function inquognito:logic/abilities/gun/augments/nova/collide/entity

scoreboard players add @s inquognito.temp 1
kill @s[scores={inquognito.temp=100..}]
