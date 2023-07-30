particle minecraft:dust 1.0 0.0 0.0 2.0 ~ ~ ~ 0.0 1.0 0.0 0.0 25 normal @a[tag=pr.target,scores={inquognito.clearance=0}]

execute align xyz positioned ^ ^-3 ^ as @a[tag=pr.target,scores={inquognito.clearance=0},dy=6] positioned ~0.5 ~ ~ run function inquognito:logic/gates/block
