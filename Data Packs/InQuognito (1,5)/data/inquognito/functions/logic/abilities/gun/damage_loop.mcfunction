damage @s 0.5 minecraft:generic

scoreboard players remove damage inquognito.temp 1
execute if score damage inquognito.temp matches 1.. run function inquognito:logic/abilities/gun/damage_loop
