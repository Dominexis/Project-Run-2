execute as @a[tag=pr.target] at @s if block ~ ~ ~ water run kill @s
execute as @a[tag=pr.target] at @s if block ~ ~ ~ seagrass run kill @s
execute positioned ~14 ~14 ~-36 as @a[tag=pr.target,distance=..0.6] run function artem:teleport