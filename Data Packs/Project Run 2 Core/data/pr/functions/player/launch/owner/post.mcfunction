# Set owner

data modify entity @s Owner set from storage pr:data tag.Owner







# Set random Y coordinate

scoreboard players set #input pr.value 10000
function pr:generic/rng/lcg
scoreboard players add #output pr.value 20000
execute store result entity @s Pos[1] double 1 run scoreboard players get #output pr.value







# Spawn bat

execute at @s run summon minecraft:bat ~ ~ ~ {Tags:["pr.launch.post"],DeathLootTable:"",NoAI:1b,Silent:1b,Health:1.0f,PersistenceRequired:1b}







# Remove tag

tag @s remove pr.launch
return 1