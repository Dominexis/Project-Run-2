scoreboard players add @s inquognito.temp 1
scoreboard players operation #modulo inquognito.temp = @s inquognito.temp
scoreboard players operation #modulo inquognito.temp %= #2 pr.value

execute if score #modulo inquognito.temp matches 0 as @a[tag=pr.target,tag=!inquognito.clearance.sewer,scores={inquognito.floor=0}] run function inquognito:logic/plot/gates/2/particles

execute align xyz positioned ^ ^-1 ^1 as @e[dy=2,tag=!inquognito.clearance.sewer,predicate=inquognito:targets] positioned ^-0.5 ^ ^-1 run function inquognito:logic/plot/gates/block
execute rotated ~180.0 ~ align xyz positioned ^ ^-1 ^1 as @e[dy=2,tag=!inquognito.clearance.sewer,predicate=inquognito:targets] positioned ^-0.5 ^ ^-1 run function inquognito:logic/plot/gates/block

return 1