scoreboard players add @s inquognito.temp 1
scoreboard players operation #modulo inquognito.temp = @s inquognito.temp
scoreboard players operation #modulo inquognito.temp %= #2 pr.value

execute if score #modulo inquognito.temp matches 0 as @a[tag=pr.target,scores={inquognito.floor=0},tag=!inquognito.clearance.nova] run function inquognito:logic/plot/gates/4/particles

execute align xyz positioned ^ ^-1 ^ as @e[dy=2,tag=!inquognito.clearance.nova,predicate=inquognito:targets] positioned ^0.5 ^ ^ run function inquognito:logic/plot/gates/block
