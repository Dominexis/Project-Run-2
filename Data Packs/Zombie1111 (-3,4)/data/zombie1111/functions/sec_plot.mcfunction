

scoreboard players set secTimer zombie_rngV 0
execute as @a[tag=zombiePlotPlayer,tag=pr.target] at @s run function zombie1111:player_sec
#execute positioned 65307.01 6.00 437.70 rotated -1620.25 -1.04 run function zombie1111:summon_try
execute positioned ~19 ~6 ~13 rotated -1620.25 -1.04 run function zombie1111:summon_try
#execute positioned 65288.49 3.00 456.42 rotated -2699.37 -0.57 run function zombie1111:summon_try
execute positioned ~0 ~3 ~32 rotated -2699.37 -0.57 run function zombie1111:summon_try
#execute positioned 65256.51 6.00 391.59 rotated -2924.19 -1.04 run function zombie1111:summon_try
execute positioned ~-32 ~6 ~-33 rotated -2924.19 -1.04 run function zombie1111:summon_try
#execute positioned 65319.70 7.00 402.54 rotated -3147.43 0.37 run function zombie1111:summon_try
execute positioned ~31 ~7 ~-22 rotated -3147.43 0.37 run function zombie1111:summon_try
execute as @e[type=#zombie1111:spawnable,tag=zombiePlot,tag=pr.target] at @s if block ~ ~-0.9 ~ #zombie1111:deathblocks run kill @s
