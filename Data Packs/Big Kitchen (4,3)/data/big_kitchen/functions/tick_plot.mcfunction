# This function will run every tick while players are in your plot on the center block at Y=0

execute positioned ~-40 -64 ~-40 run kill @a[dx=80,dy=22,dz=80,tag=pr.target]
execute as @a[tag=pr.target] at @s if block ~ ~ ~ water run kill @s
execute as @a[tag=pr.target] at @s if block ~ ~ ~ cave_air run kill @s

execute as @a[tag=pr.target] at @s if block ~ ~-1 ~ coal_block run tag @s add big_kitchen.warp1
execute as @a[tag=pr.target,tag=big_kitchen.warp1] positioned ~37 ~17 ~ rotated -90 0 run function big_kitchen:warp
execute as @a[tag=pr.target] at @s if block ~ ~-2 ~ birch_wood run tag @s add big_kitchen.warp2
execute as @a[tag=pr.target,tag=big_kitchen.warp2] positioned ~-24 ~-39 ~-35 rotated 0 0 run function big_kitchen:warp