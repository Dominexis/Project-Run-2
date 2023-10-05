#summon targets according to score

execute if score uktargetHolder uk_targets matches 01 run summon pillager ~10 ~-53 ~-08 {OnGround:1b,Silent:1b,CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,PatrolLeader:0b,Patrolling:0b,CanJoinRaid:0b,Tags:["uk_targets","uk_target1","pr.target"],CustomName:'{"text":"Target","color":"light_purple"}',HandItems:[{id:"minecraft:air",Count:1b},{}],Health:1.0f}
execute if score uktargetHolder uk_targets matches 01 run scoreboard players add uktargetHolder uk_targets 1

execute if score uktargetHolder uk_targets matches 03 run summon pillager ~12 ~-53 ~-18 {OnGround:1b,Silent:1b,CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,PatrolLeader:0b,Patrolling:0b,CanJoinRaid:0b,Tags:["uk_targets","uk_target2","pr.target"],CustomName:'{"text":"Target","color":"light_purple"}',HandItems:[{id:"minecraft:air",Count:1b},{}],Health:1.0f}
execute if score uktargetHolder uk_targets matches 03 run scoreboard players add uktargetHolder uk_targets 1

execute if score uktargetHolder uk_targets matches 05 run summon pillager ~06 ~-53 ~-15 {OnGround:1b,Silent:1b,CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,PatrolLeader:0b,Patrolling:0b,CanJoinRaid:0b,Tags:["uk_targets","uk_target3","pr.target"],CustomName:'{"text":"Target","color":"light_purple"}',HandItems:[{id:"minecraft:air",Count:1b},{}],Health:1.0f}
execute if score uktargetHolder uk_targets matches 05 run scoreboard players add uktargetHolder uk_targets 1

execute if score uktargetHolder uk_targets matches 07 run summon pillager ~17 ~-53 ~-16 {OnGround:1b,Silent:1b,CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,PatrolLeader:0b,Patrolling:0b,CanJoinRaid:0b,Tags:["uk_targets","uk_target4","pr.target"],CustomName:'{"text":"Target","color":"light_purple"}',HandItems:[{id:"minecraft:air",Count:1b},{}],Health:1.0f}
execute if score uktargetHolder uk_targets matches 07 run scoreboard players add uktargetHolder uk_targets 1

execute if score uktargetHolder uk_targets matches 09 run summon pillager ~16 ~-53 ~-10 {OnGround:1b,Silent:1b,CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,PatrolLeader:0b,Patrolling:0b,CanJoinRaid:0b,Tags:["uk_targets","uk_target5","pr.target"],CustomName:'{"text":"Target","color":"light_purple"}',HandItems:[{id:"minecraft:air",Count:1b},{}],Health:1.0f}
execute if score uktargetHolder uk_targets matches 09 run scoreboard players add uktargetHolder uk_targets 1

execute if score uktargetHolder uk_targets matches 11 run summon pillager ~14 ~-53 ~-18 {OnGround:1b,Silent:1b,CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,PatrolLeader:0b,Patrolling:0b,CanJoinRaid:0b,Tags:["uk_targets","uk_target6","pr.target"],CustomName:'{"text":"Target","color":"light_purple"}',HandItems:[{id:"minecraft:air",Count:1b},{}],Health:1.0f}
execute if score uktargetHolder uk_targets matches 11 run scoreboard players add uktargetHolder uk_targets 1