# player tick related
execute as @a[tag=pr.target] at @s run function funkytoc_moon:systems/player_tick
execute positioned ~-2 ~17 ~-56 run tag @a[tag=pr.target,dx=4,dy=1,dz=28] remove funkytoc.moon.gravity.low
execute positioned ~-2 ~17 ~-56 run effect clear @a[tag=pr.target,dx=4,dy=1,dz=28] slow_falling
execute positioned ~-2 ~17 ~-56 as @a[tag=pr.target,dx=4,dy=1,dz=28] at @s run function funkytoc_moon:systems/oxygen/refill

# block related
