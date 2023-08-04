
scoreboard players remove maxRange zombie_rngV 1
execute if block ~ ~ ~ #zombie1111:no_collision if score maxRange zombie_rngV matches 1.. positioned ~ ~-0.5 ~ as @e[type=#zombie1111:spawnable,tag=zombiePlot,distance=..1,limit=1] at @s run function zombie1111:player_shootlaser_settarget
execute unless block ~ ~ ~ #zombie1111:no_collision if score maxRange zombie_rngV matches 1.. run function zombie1111:player_shootlaser_settarget
execute if score maxRange zombie_rngV matches ..0 run function zombie1111:player_shootlaser_settarget
execute if block ~ ~ ~ #zombie1111:no_collision if score maxRange zombie_rngV matches 1.. positioned ~ ~-0.5 ~ unless entity @e[type=#zombie1111:spawnable,tag=zombiePlot,distance=..1,limit=1] positioned ~ ~0.5 ~ positioned ^ ^ ^0.9 run function zombie1111:player_shootlaser_gettarget

