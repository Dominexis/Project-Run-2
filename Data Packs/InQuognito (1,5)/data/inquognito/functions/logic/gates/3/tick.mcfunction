scoreboard players add @s inquognito.temp 1
scoreboard players operation #modulo inquognito.temp = @s inquognito.temp
scoreboard players operation #modulo inquognito.temp %= #2 pr.value

execute if score #modulo inquognito.temp matches 0 as @a[tag=pr.target,scores={inquognito.floor=0},tag=!inquognito.gun.trinity] run function inquognito:logic/gates/3/particles

execute align xyz positioned ^ ^-1 ^ as @e[predicate=inquognito:targets,tag=!inquognito.gun.trinity,dy=2] positioned ^0.5 ^ ^ run function inquognito:logic/gates/block
