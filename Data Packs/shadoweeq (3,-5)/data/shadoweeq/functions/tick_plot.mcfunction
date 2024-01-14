execute positioned ~-40 -52 ~-40 run kill @a[dx=80,dy=1,dz=80,tag=pr.target]
execute as @a[tag=pr.target] at @s if block ~ ~ ~ minecraft:water run kill @s
return 1