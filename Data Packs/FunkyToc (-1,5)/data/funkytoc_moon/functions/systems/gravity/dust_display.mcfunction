advancement revoke @s only funkytoc_moon:dust_particles

particle minecraft:dust_color_transition .9 .9 .9 1.2 1 1 1 ~ ~.02 ~ .05 0 .05 0 1 normal @a[distance=..128,tag=pr.target]
scoreboard players remove @s funkytoc.moon.particle.dust 1

return 1