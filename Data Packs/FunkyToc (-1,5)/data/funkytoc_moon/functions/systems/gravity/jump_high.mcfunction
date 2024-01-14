effect give @s minecraft:levitation 1 6 true
execute if entity @s[scores={funkytoc.moon.particle.dust=0}] run playsound minecraft:block.stone.place player @s ~ ~ ~ 3.0 .5
execute if entity @s[scores={funkytoc.moon.particle.dust=0}] run particle minecraft:dust_color_transition .9 .9 .9 1.5 1 1 1 ~ ~.02 ~ .6 0 .6 0 50 normal @a[distance=..128,tag=pr.target]
scoreboard players set @s funkytoc.moon.particle.dust 12
return 1