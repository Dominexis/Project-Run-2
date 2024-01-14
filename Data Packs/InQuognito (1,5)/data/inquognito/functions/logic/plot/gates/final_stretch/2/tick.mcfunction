scoreboard players add @s inquognito.temp 1
scoreboard players operation #modulo inquognito.temp = @s inquognito.temp
scoreboard players operation #modulo inquognito.temp %= #2 pr.value

execute if score #modulo inquognito.temp matches 0 as @a[tag=pr.target,tag=!inquognito.clearance.boss,scores={inquognito.floor=-1}] run function inquognito:logic/plot/gates/final_stretch/2/particles

execute align xyz positioned ^-3 ^-1 ^ as @e[dx=6,tag=!inquognito.clearance.boss,predicate=inquognito:targets] positioned ^3.5 ^ ^ run function inquognito:logic/plot/gates/block

return 1