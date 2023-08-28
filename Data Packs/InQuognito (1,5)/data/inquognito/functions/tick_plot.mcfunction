execute positioned 136.5 0.5 520.5 run function inquognito:logic/tick

# Gun
execute as @e[type=minecraft:marker,tag=inquognito.gun] at @s run function inquognito:logic/abilities/gun/tick

# Gates
execute as @e[type=minecraft:marker,tag=inquognito.gate.gun] at @s run function inquognito:logic/gates/gun/tick

execute as @e[type=minecraft:marker,tag=inquognito.gate.1] at @s run function inquognito:logic/gates/1/tick

# Moving Barrier
execute as @e[type=minecraft:item_display,tag=inquognito.movingBarrier] at @s run function inquognito:logic/plot/moving_barrier/tick
