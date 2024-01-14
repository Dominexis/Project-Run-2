#Puts phisical blocks on the platforms
execute at @e[type=minecraft:block_display,tag=subchronos_platform_pit2,tag=pr.target] run fill ~ ~3 ~ ~1 ~3 ~1 minecraft:barrier

scoreboard players set pit2_rised subchronos_hive 1
scoreboard players set pit2_moving subchronos_hive 0
return 1