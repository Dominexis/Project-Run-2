# This function will run every tick while players are in your plot on the center block at Y=0
# execute positioned ~14 ~1 ~-3 as @a[tag=pr.target,tag=!lory.playing,dx=4.2,dy=1,dz=4] positioned ~-14 ~-1 ~3 run function lory:run_start
# execute as @e[tag=pr.target,tag=lory.water] at @s run function lory:water
# execute positioned ~20 ~1 ~-2 as @a[tag=pr.target,tag=lory.playing,dx=1,dy=1,dz=4] run function lory:run_stop
execute positioned ~-1 ~110 ~-21 as @a[dx=2,dy=2,dz=1,tag=pr.target] positioned ~1 ~-110 ~21 run function lory:win
execute as @a[tag=pr.target] at @s if block ~ ~ ~ minecraft:water run kill @s
return 1