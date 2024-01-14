#Removes phisical blocks on the platforms
execute at @e[type=minecraft:block_display,tag=subchronos_platform_pit1,tag=pr.target] run fill ~ ~6 ~ ~1 ~6 ~1 minecraft:air

scoreboard players set pit1_rised subchronos_hive 0
return 1