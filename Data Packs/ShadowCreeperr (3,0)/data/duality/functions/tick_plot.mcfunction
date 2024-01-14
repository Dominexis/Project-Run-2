##Tick Function
#
#Particle effects when players run along the parkour path
execute as @a[tag=pr.target,tag=panda] at @s if block ~ ~-1 ~ minecraft:black_concrete run particle minecraft:smoke ~ ~ ~ 0.2 0.2 0.2 0 3
execute as @a[tag=pr.target,tag=panda] at @s if block ~ ~-1 ~ minecraft:black_stained_glass run particle minecraft:smoke ~ ~ ~ 0.2 0.2 0.2 0 3
execute as @a[tag=pr.target,tag=panda] at @s if block ~ ~-1 ~ minecraft:white_concrete run particle minecraft:dust 1 1 1 1 ~ ~ ~ 0.2 0.3 0.2 0 3
execute as @a[tag=pr.target,tag=panda] at @s if block ~ ~-1 ~ minecraft:white_stained_glass run particle minecraft:dust 1 1 1 1 ~ ~ ~ 0.2 0.3 0.2 0 3
#Teleports players to white/black realms
execute positioned ~ ~66 ~ as @a[distance=..8,tag=pr.target,tag=panda] at @s if block ~ ~-1 ~ minecraft:black_concrete run playsound minecraft:block.end_portal.spawn master @s ~ ~ ~ 100
execute positioned ~ ~66 ~ as @a[distance=..8,tag=pr.target,tag=panda] at @s if block ~ ~-1 ~ minecraft:black_concrete run tp @s ~ 9 ~
execute positioned ~ ~66 ~ as @a[distance=..8,tag=pr.target,tag=panda] at @s if block ~ ~-1 ~ minecraft:white_concrete run playsound minecraft:block.end_portal.spawn master @s ~ ~ ~ 100
execute positioned ~ ~66 ~ as @a[distance=..8,tag=pr.target,tag=panda] at @s if block ~ ~-1 ~ minecraft:white_concrete run tp @s ~ -48 ~



execute positioned ~42 ~26 ~-2 as @a[dx=1,dy=4,dz=4,tag=pr.target] positioned ~-42 ~-26 ~2 run playsound minecraft:block.end_portal.spawn master @s ~ ~ ~ 100
execute positioned ~42 ~26 ~-2 as @a[dx=1,dy=4,dz=4,tag=pr.target] positioned ~-42 ~-26 ~2 run tp @s ~41 ~1 ~0 -90 0
execute positioned ~42 ~-30 ~-2 as @a[dx=1,dy=4,dz=4,tag=pr.target] positioned ~-42 ~30 ~2 run playsound minecraft:block.end_portal.spawn master @s ~ ~ ~ 100
execute positioned ~42 ~-30 ~-2 as @a[dx=1,dy=4,dz=4,tag=pr.target] positioned ~-42 ~30 ~2 run tp @s ~41 ~1 ~0 -90 0



effect give @a[tag=pr.target] minecraft:resistance infinite 4 true
return 1