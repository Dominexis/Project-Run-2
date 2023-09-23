scoreboard players set #input pr.value 50
function pr:generic/rng/lcg

execute if predicate inquognito:random/50 run scoreboard players operation #output pr.value *= #-1 pr.value
