# player tick related
execute as @a[tag=pr.target] at @s run function funkytoc_moon:systems/player_tick
execute positioned ~-2 ~17 ~-56 run tag @a[tag=pr.target,dx=4,dy=1,dz=28] remove funkytoc.moon.gravity.low
execute positioned ~-2 ~17 ~-56 run effect clear @a[tag=pr.target,dx=4,dy=1,dz=28] slow_falling
execute positioned ~-2 ~17 ~-56 as @a[tag=pr.target,dx=4,dy=1,dz=28] at @s run function funkytoc_moon:systems/oxygen/refill

# Tractor Beam
execute as @a[tag=pr.target] at @s if block ~ ~ ~ cave_air run effect give @s levitation 1 4 true
execute as @a[tag=pr.target] at @s if block ~ ~ ~ cave_air run particle enchanted_hit ~ ~-1 ~ 0.1 0.1 0.1 0 10 force

effect give @a[tag=pr.target,tag=funkytoc.moon.gravity.low] minecraft:slow_falling 3600 0 true

#Ending
execute as @a[tag=pr.target] at @s if block ~ ~ ~ end_gateway run function pr:player/finish