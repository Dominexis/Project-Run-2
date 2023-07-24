#Removes phisical blocks on the platforms
execute at @e[type=minecraft:block_display,tag=subchronos_platform_pit2,tag=pr.target] run fill ~ ~3 ~ ~1 ~3 ~1 minecraft:air

scoreboard players set pit2_rised subchronos_hive 0