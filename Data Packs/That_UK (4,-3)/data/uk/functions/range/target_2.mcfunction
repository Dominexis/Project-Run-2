#summon targets according to score

execute if score uktargetHolder uk_targets matches 13 run summon minecraft:pillager ~11 ~-53 ~11 {Rotation:[180.0f,0.0f],OnGround:1b,Silent:1b,CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,PatrolLeader:0b,Patrolling:0b,CanJoinRaid:0b,Tags:["uk_targets","uk_target7","pr.target"],CustomName:'{"text":"Target","color":"light_purple","type":"text"}',HandItems:[{id:"minecraft:air",Count:1b},{}],Health:1.0f}
execute if score uktargetHolder uk_targets matches 13 run scoreboard players add uktargetHolder uk_targets 1

execute if score uktargetHolder uk_targets matches 15 run summon minecraft:pillager ~16 ~-53 ~07 {Rotation:[180.0f,0.0f],OnGround:1b,Silent:1b,CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,PatrolLeader:0b,Patrolling:0b,CanJoinRaid:0b,Tags:["uk_targets","uk_target8","pr.target"],CustomName:'{"text":"Target","color":"light_purple","type":"text"}',HandItems:[{id:"minecraft:air",Count:1b},{}],Health:1.0f}
execute if score uktargetHolder uk_targets matches 15 run scoreboard players add uktargetHolder uk_targets 1

execute if score uktargetHolder uk_targets matches 17 run summon minecraft:pillager ~07 ~-53 ~15 {Rotation:[180.0f,0.0f],OnGround:1b,Silent:1b,CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,PatrolLeader:0b,Patrolling:0b,CanJoinRaid:0b,Tags:["uk_targets","uk_target9","pr.target"],CustomName:'{"text":"Target","color":"light_purple","type":"text"}',HandItems:[{id:"minecraft:air",Count:1b},{}],Health:1.0f}
execute if score uktargetHolder uk_targets matches 17 run scoreboard players add uktargetHolder uk_targets 1

execute if score uktargetHolder uk_targets matches 19 run summon minecraft:pillager ~08 ~-53 ~07 {Rotation:[180.0f,0.0f],OnGround:1b,Silent:1b,CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,PatrolLeader:0b,Patrolling:0b,CanJoinRaid:0b,Tags:["uk_targets","uk_target10","pr.target"],CustomName:'{"text":"Target","color":"light_purple","type":"text"}',HandItems:[{id:"minecraft:air",Count:1b},{}],Health:1.0f}
execute if score uktargetHolder uk_targets matches 19 run scoreboard players add uktargetHolder uk_targets 1

execute if score uktargetHolder uk_targets matches 21 run summon minecraft:pillager ~11 ~-53 ~15 {Rotation:[180.0f,0.0f],OnGround:1b,Silent:1b,CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,PatrolLeader:0b,Patrolling:0b,CanJoinRaid:0b,Tags:["uk_targets","uk_target11","pr.target"],CustomName:'{"text":"Target","color":"light_purple","type":"text"}',HandItems:[{id:"minecraft:air",Count:1b},{}],Health:1.0f}
execute if score uktargetHolder uk_targets matches 21 run scoreboard players add uktargetHolder uk_targets 1

execute if score uktargetHolder uk_targets matches 23 run summon minecraft:pillager ~18 ~-53 ~12 {Rotation:[180.0f,0.0f],OnGround:1b,Silent:1b,CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,PatrolLeader:0b,Patrolling:0b,CanJoinRaid:0b,Tags:["uk_targets","uk_target12","pr.target"],CustomName:'{"text":"Target","color":"light_purple","type":"text"}',HandItems:[{id:"minecraft:air",Count:1b},{}],Health:1.0f}
execute if score uktargetHolder uk_targets matches 23 run scoreboard players add uktargetHolder uk_targets 1
return 1