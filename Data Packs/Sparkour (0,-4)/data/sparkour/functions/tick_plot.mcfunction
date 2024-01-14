# This function will run every tick while players are in your plot on the center block at Y=0
execute positioned ~-2 ~-11 ~-2 as @a[dx=4,dy=2,dz=2,tag=pr.target] positioned ~2 ~11 ~2 positioned ~3 ~50 ~36 run function sparkour:warp
execute positioned ~-2 ~50 ~30 as @a[distance=..1,tag=pr.target] positioned ~2 ~-50 ~-30 positioned ~-29 ~49 ~0 run function sparkour:warp
execute positioned ~8 ~50 ~30 as @a[distance=..1,tag=pr.target] positioned ~-8 ~-50 ~-30 positioned ~30 ~49 ~0 run function sparkour:warp

particle minecraft:portal ~-2 ~51.3 ~30 0 0.75 0.75 0.1 7
particle minecraft:portal ~8 ~51.3 ~30 0 0.75 0.75 0.1 7

execute as @a[tag=pr.target] at @s if block ~ ~-0.1 ~ minecraft:light_gray_stained_glass run kill @s
return 1