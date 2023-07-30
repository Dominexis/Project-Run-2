execute positioned 136 0 520 as @a[tag=pr.target] run function inquognito:tick_players

# Gun
execute as @e[type=minecraft:marker,tag=inquognito.gun] at @s run function inquognito:logic/abilities/gun/tick

# Gates
execute as @e[type=minecraft:marker,tag=inquognito.gate.gun] at @s run function inquognito:logic/gates/gun/tick

execute as @e[type=minecraft:marker,tag=inquognito.gate.1] at @s run function inquognito:logic/gates/1/tick
