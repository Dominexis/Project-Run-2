particle minecraft:dust 1.0 0.0 0.0 1.0 ^ ^ ^ 0.0 1.0 0.0 0.0 20 normal @a[tag=pr.target,scores={inquognito.clearance=..1}]

execute align xyz positioned ^ ^-1 ^ as @a[tag=pr.target,scores={inquognito.clearance=..1},dy=2] positioned ^0.5 ^ ^ run function inquognito:logic/gates/block
