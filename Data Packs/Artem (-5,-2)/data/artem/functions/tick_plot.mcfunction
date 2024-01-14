execute as @a[tag=pr.target] at @s if block ~ ~ ~ minecraft:water run kill @s
execute as @a[tag=pr.target] at @s if block ~ ~ ~ minecraft:seagrass run kill @s
execute positioned ~14 ~14 ~-36 as @a[distance=..0.6,tag=pr.target] run function artem:teleport
return 1