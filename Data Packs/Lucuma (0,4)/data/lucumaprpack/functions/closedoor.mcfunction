execute at @e[type=minecraft:armor_stand,tag=LucumaExitDoor,tag=pr.target] run fill ~ ~3 ~ ~ ~5 ~ minecraft:mangrove_wood
execute at @e[type=minecraft:armor_stand,tag=LucumaExitDoor,tag=pr.target] run fill ~ ~3 ~-2 ~ ~5 ~-2 minecraft:mangrove_wood

execute at @e[type=minecraft:armor_stand,tag=LucumaExitDoor,tag=pr.target] run setblock ~ ~3 ~-1 minecraft:dark_oak_stairs[facing=west] replace
execute at @e[type=minecraft:armor_stand,tag=LucumaExitDoor,tag=pr.target] run setblock ~ ~5 ~-1 minecraft:dark_oak_stairs[facing=west,half=top] replace

execute at @e[type=minecraft:armor_stand,tag=LucumaExitDoor,tag=pr.target] run setblock ~ ~4 ~-1 minecraft:brown_shulker_box

return 1