scoreboard players add @s inquognito.temp 1
scoreboard players operation #modulo inquognito.temp = @s inquognito.temp
scoreboard players operation #modulo inquognito.temp %= #2 pr.value

execute if score #modulo inquognito.temp matches 0 as @a[tag=pr.target,scores={inquognito.floor=-1,inquognito.clearance.sector_4=..2}] run function inquognito:logic/plot/gates/4/particles

execute align xyz positioned ^ ^-1 ^ as @e[dy=2,scores={inquognito.clearance.sector_4=..2},predicate=inquognito:targets] positioned ^0.5 ^ ^ run function inquognito:logic/plot/gates/block

return 1