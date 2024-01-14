execute if entity @s[tag=inquognito.gate.start] at @s run function inquognito:logic/plot/gates/start/tick

execute if entity @s[tag=inquognito.gate.gun] at @s run function inquognito:logic/plot/gates/gun/tick

execute if entity @s[tag=inquognito.gate.1] at @s run function inquognito:logic/plot/gates/1/tick

execute if entity @s[tag=inquognito.gate.2] at @s run function inquognito:logic/plot/gates/2/tick

execute if entity @s[tag=inquognito.gate.3] at @s run function inquognito:logic/plot/gates/3/tick

execute if entity @s[tag=inquognito.gate.4] at @s run function inquognito:logic/plot/gates/4/tick

execute if entity @s[tag=inquognito.gate.energy] at @s run function inquognito:logic/plot/gates/energy/tick

execute if entity @s[tag=inquognito.gate.frostbite] at @s run function inquognito:logic/plot/gates/frostbite/tick

execute if entity @s[tag=inquognito.gate.office] at @s run function inquognito:logic/plot/gates/office/tick

execute if entity @s[tag=inquognito.gate.final_stretch.1] at @s run function inquognito:logic/plot/gates/final_stretch/1/tick

execute if entity @s[tag=inquognito.gate.final_stretch.2] at @s run function inquognito:logic/plot/gates/final_stretch/2/tick

execute if entity @s[tag=inquognito.gate.final_stretch.3] at @s run function inquognito:logic/plot/gates/final_stretch/3/tick

execute if entity @s[tag=inquognito.gate.nova] at @s run function inquognito:logic/plot/gates/nova/tick

execute if score #modulo inquognito.temp matches 0 run scoreboard players reset @s inquognito.temp

return 1