#Puts phisical blocks on the platforms
execute at @e[type=minecraft:block_display,tag=subchronos_platform_pit1,tag=pr.target] run fill ~ ~6 ~ ~1 ~6 ~1 minecraft:barrier

scoreboard players set pit1_rised subchronos_hive 1
scoreboard players set pit1_moving subchronos_hive 0
return 1