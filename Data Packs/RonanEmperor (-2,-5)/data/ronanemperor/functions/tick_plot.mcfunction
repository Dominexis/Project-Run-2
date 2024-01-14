# This function will run every tick while players are in your plot on the center block at Y=0
# Center [-152, 0, -440]

# Sculk darkness
execute as @a[tag=pr.target] at @s if block ~ ~-1 ~ #ronanemperor:sculk run effect give @s minecraft:darkness 1 0 true

# Checkpoint detection
execute as @e[type=minecraft:marker,tag=ronanemperor.checkpoint] at @s as @a[distance=0..3,tag=pr.target] run function pr:player/checkpoint/mark

# Detect if player falls
execute positioned ~-40 ~27 ~-40 as @a[dx=80,dy=2,dz=80,tag=pr.target] run scoreboard players set @s pr.death 1
return 1