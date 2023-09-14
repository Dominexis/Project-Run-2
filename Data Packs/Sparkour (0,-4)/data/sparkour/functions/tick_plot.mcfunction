# This function will run every tick while players are in your plot on the center block at Y=0
execute positioned ~ ~-10 ~ as @a[tag=pr.target,distance=..5] at @s if block ~ ~-2 ~ minecraft:diamond_block run playsound minecraft:entity.enderman.teleport player @s
execute positioned ~ ~-10 ~ as @a[tag=pr.target,distance=..5] at @s if block ~ ~-2 ~ minecraft:diamond_block run tp @s ~35 ~62 ~21
execute positioned ~35 ~50 ~-7 as @a[tag=pr.target,distance=..5] run playsound minecraft:entity.enderman.teleport player @s
execute positioned ~35 ~50 ~-7 as @a[tag=pr.target,distance=..5] run tp @s ~-66 ~ ~4 90 0

execute as @a[tag=pr.target] at @s if block ~ ~-0.1 ~ light_gray_stained_glass run kill @s