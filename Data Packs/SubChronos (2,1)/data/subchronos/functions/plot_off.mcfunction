# This function will run when the plot turns off, which is when your plot becomes empty
# It will run in your plot on the center block at Y=0
# Use this to reset your plot and get rid of any laggy entities
scoreboard objectives remove subchronos_hive
scoreboard objectives remove subchronos_cp
scoreboard objectives remove subchronos_y
execute at @e[type=minecraft:block_display,tag=subchronos_platform_pit1,tag=pr.target] run fill ~ ~6 ~ ~1 ~6 ~1 minecraft:air
execute at @e[type=minecraft:block_display,tag=subchronos_platform_pit2,tag=pr.target] run fill ~ ~3 ~ ~1 ~3 ~1 minecraft:air
execute at @e[type=minecraft:block_display,tag=subchronos_platform_pit3,tag=pr.target] run fill ~ ~4 ~ ~1 ~4 ~1 minecraft:barrier


kill @e[tag=subchronos_bee,tag=pr.target]