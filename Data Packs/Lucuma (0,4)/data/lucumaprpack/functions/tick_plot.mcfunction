execute at @e[type=minecraft:armor_stand,tag=LucumaExitDoor,tag=pr.target] positioned ~-1 ~ ~-1 as @a[dy=5,dz=-1,tag=pr.target,tag=!LucumaExitKey] run tellraw @s "It is not your time. Seek the answer."

execute at @e[type=minecraft:armor_stand,tag=LucumaExitDoor,tag=pr.target] positioned ~-1 ~ ~-1 as @a[dy=5,dz=-1,tag=pr.target,tag=!LucumaExitKey] run tp @s ~2 ~3 ~
