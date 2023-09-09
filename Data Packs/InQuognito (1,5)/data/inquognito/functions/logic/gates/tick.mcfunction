execute if entity @s[tag=inquognito.gate.start] at @s run function inquognito:logic/gates/start/tick

execute if entity @s[tag=inquognito.gate.gun] at @s run function inquognito:logic/gates/gun/tick

execute if entity @s[tag=inquognito.gate.1] at @s run function inquognito:logic/gates/1/tick

execute if entity @s[tag=inquognito.gate.2] at @s run function inquognito:logic/gates/2/tick

execute if entity @s[tag=inquognito.gate.3] at @s run function inquognito:logic/gates/3/tick

execute if entity @s[tag=inquognito.gate.energy] at @s run function inquognito:logic/gates/energy/tick

execute if entity @s[tag=inquognito.gate.frostbite] at @s run function inquognito:logic/gates/frostbite/tick

execute if score #modulo inquognito.temp matches 0 run scoreboard players reset @s inquognito.temp
