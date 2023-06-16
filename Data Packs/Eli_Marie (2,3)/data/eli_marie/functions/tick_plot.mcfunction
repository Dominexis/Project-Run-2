# This function will run every tick while players are in your plot on the center block at Y=0

execute positioned ~32 ~-7 ~-32 as @a[dx=0,dy=0,dz=1,tag=pr.target] at @s run effect give @s minecraft:levitation 7 1 true
execute positioned ~-14 ~-22 ~15 as @a[dx=0,dy=0,dz=1,tag=pr.target] at @s run effect give @s minecraft:levitation 6 1 true




#checkpoints
execute positioned ~-16 ~12 ~-20 as @a[dx=0,dy=1,dz=0,tag=pr.target] at @s run function pr:player/checkpoint/mark
execute positioned ~-1 ~9 ~-24 as @a[dx=0,dy=1,dz=0,tag=pr.target] at @s run function pr:player/checkpoint/mark
execute positioned ~26 ~-7 ~-32 as @a[dx=0,dy=1,dz=1,tag=pr.target] at @s run function pr:player/checkpoint/mark
execute positioned ~29 ~-2 ~0 as @a[dx=0,dy=1,dz=0,tag=pr.target] at @s run function pr:player/checkpoint/mark
execute positioned ~-18 ~-22 ~15 as @a[dx=0,dy=1,dz=1,tag=pr.target] at @s run function pr:player/checkpoint/mark
execute positioned ~32 ~-3 ~16 as @a[distance=..6,tag=pr.target] at @s run function pr:player/checkpoint/mark