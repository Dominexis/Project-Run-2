scoreboard players add @s inquognito.temp 1
scoreboard players operation #modulo inquognito.temp = @s inquognito.temp
scoreboard players operation #modulo inquognito.temp %= #3 pr.value

execute if score #modulo inquognito.temp matches 0 as @a[tag=pr.target,scores={inquognito.floor=0,inquognito.clearance=0}] run function inquognito:logic/gates/gun/particles

execute align xyz positioned ^ ^-3 ^ as @a[tag=pr.target,scores={inquognito.floor=0,inquognito.clearance=0},dy=6] positioned ~0.5 ~ ~ run function inquognito:logic/gates/block
