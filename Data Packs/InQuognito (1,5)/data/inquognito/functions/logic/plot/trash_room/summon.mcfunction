scoreboard players set #input pr.value 4
function pr:generic/rng/lcg

execute if score #output pr.value matches 0 positioned ~-27 ~69 ~-36 summon minecraft:creeper run function inquognito:logic/enemies/7
execute if score #output pr.value matches 1 positioned ~-21 ~69 ~-36 summon minecraft:creeper run function inquognito:logic/enemies/8
execute if score #output pr.value matches 2 positioned ~-27 ~69 ~-27 summon minecraft:creeper run function inquognito:logic/enemies/9
execute if score #output pr.value matches 3 positioned ~-21 ~69 ~-27 summon minecraft:creeper run function inquognito:logic/enemies/10

return 1