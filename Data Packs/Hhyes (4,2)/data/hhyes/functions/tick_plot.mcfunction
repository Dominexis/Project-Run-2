execute as @a[tag=pr.target] at @s if block ~ ~ ~ light[level=0] run kill @s
execute positioned ~5 ~-53 ~-15 run effect give @a[tag=pr.target,distance=..3] levitation infinite 25 true
execute as @a[tag=pr.target,predicate=hhyes:levitation] at @s unless block ~ ~2 ~ #hhyes:safe_ceiling run kill @s
execute positioned ~-40 292 ~-40 as @a[dx=80,dy=50,dz=50,tag=pr.target,predicate=hhyes:levitation] positioned ~40 0 ~40 run function hhyes:warp

execute positioned ~8 ~290 ~-27 as @a[tag=pr.target,dx=2,dy=2,dz=2] positioned ~-8 ~-290 ~27 run function hhyes:exit_1
execute positioned ~-1 ~290 ~-18 as @a[tag=pr.target,dx=2,dy=2,dz=2] positioned ~1 ~-290 ~18 run function hhyes:exit_2