# Spawn a pillager at a random location

scoreboard players set #input pr.value 2
function pr:generic/rng/lcg

execute if score #pillager_spot uk_value matches 0 run scoreboard players add #output pr.value 1
execute if score #pillager_spot uk_value matches 1 if score #output pr.value matches 1 run scoreboard players add #output pr.value 1

execute if score #output pr.value matches 0 run summon minecraft:pillager ~12 ~29 ~-23 {Rotation:[0.0f,0.0f],OnGround:1b,Silent:1b,CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,PatrolLeader:0b,Patrolling:0b,CanJoinRaid:0b,Tags:["uk_targets","uk_target1","pr.target"],CustomName:'{"text":"Target","color":"light_purple","type":"text"}',HandItems:[{id:"minecraft:air",Count:1b},{}],Health:1.0f}
execute if score #output pr.value matches 1 run summon minecraft:pillager ~26 ~29 ~-09 {Rotation:[90.0f,0.0f],OnGround:1b,Silent:1b,CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,PatrolLeader:0b,Patrolling:0b,CanJoinRaid:0b,Tags:["uk_targets","uk_target1","pr.target"],CustomName:'{"text":"Target","color":"light_purple","type":"text"}',HandItems:[{id:"minecraft:air",Count:1b},{}],Health:1.0f}
execute if score #output pr.value matches 2 run summon minecraft:pillager ~12 ~29 ~005 {Rotation:[180.0f,0.0f],OnGround:1b,Silent:1b,CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,PatrolLeader:0b,Patrolling:0b,CanJoinRaid:0b,Tags:["uk_targets","uk_target1","pr.target"],CustomName:'{"text":"Target","color":"light_purple","type":"text"}',HandItems:[{id:"minecraft:air",Count:1b},{}],Health:1.0f}
execute if score #output pr.value matches 0 positioned ~12 ~29 ~-23 run particle minecraft:large_smoke ~ ~1 ~ 0.1 0.3 0.1 0.2 50
execute if score #output pr.value matches 1 positioned ~26 ~29 ~-09 run particle minecraft:large_smoke ~ ~1 ~ 0.1 0.3 0.1 0.2 50
execute if score #output pr.value matches 2 positioned ~12 ~29 ~005 run particle minecraft:large_smoke ~ ~1 ~ 0.1 0.3 0.1 0.2 50

scoreboard players operation #pillager_spot uk_value = #output pr.value