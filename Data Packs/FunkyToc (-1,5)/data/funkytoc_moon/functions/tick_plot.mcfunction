# player tick related
execute as @a[tag=pr.target] at @s run function funkytoc_moon:systems/player_tick
execute positioned ~-2 ~17 ~-56 run tag @a[dx=4,dy=1,dz=28,tag=pr.target] remove funkytoc.moon.gravity.low
execute positioned ~-2 ~17 ~-56 run effect clear @a[dx=4,dy=1,dz=28,tag=pr.target] minecraft:slow_falling
execute positioned ~-2 ~17 ~-56 as @a[dx=4,dy=1,dz=28,tag=pr.target] at @s run function funkytoc_moon:systems/oxygen/refill

# Tractor Beam
execute as @a[tag=pr.target] at @s if block ~ ~ ~ minecraft:cave_air run effect give @s minecraft:levitation 1 4 true
execute as @a[tag=pr.target] at @s if block ~ ~ ~ minecraft:cave_air run particle minecraft:enchanted_hit ~ ~-1 ~ 0.1 0.1 0.1 0 10 force

#Ending
execute as @a[tag=pr.target] at @s if block ~ ~ ~ minecraft:end_gateway run function pr:player/finish
return 1