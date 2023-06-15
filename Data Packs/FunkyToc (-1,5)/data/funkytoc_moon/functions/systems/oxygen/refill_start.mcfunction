# first tick refill
execute as @s[tag=!funkytoc.moon.o2.refill] at @s anchored eyes positioned ^.25 ^-.2 ^.3 run playsound minecraft:block.fire.extinguish player @s ~ ~ ~ 1 .5
execute as @s[tag=!funkytoc.moon.o2.refill] at @s run function pr:player/checkpoint/mark

tag @s add funkytoc.moon.o2.refill
