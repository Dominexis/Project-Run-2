



scoreboard players set mobCount zombie_rngV 0
execute unless entity @a[distance=..50] run scoreboard players set mobCount zombie_rngV 69420
execute as @e[type=#zombie1111:spawnable,distance=..20,tag=zombiePlot] run scoreboard players add mobCount zombie_rngV 1
execute if score mobCount zombie_rngV matches ..4 run function zombie1111:summon_mob
