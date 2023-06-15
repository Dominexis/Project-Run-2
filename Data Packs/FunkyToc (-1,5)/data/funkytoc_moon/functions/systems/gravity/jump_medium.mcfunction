effect give @s minecraft:levitation 1 4 true
execute if entity @s[scores={funkytoc.moon.particle.dust=0}] run playsound minecraft:block.stone.place player @s ~ ~ ~ 2.0 .5
execute if entity @s[scores={funkytoc.moon.particle.dust=0}] run particle minecraft:dust_color_transition .9 .9 .9 1.2 1 1 1 ~ ~.02 ~ .4 0 .4 0 30 normal @a[tag=pr.target,distance=..128]
scoreboard players set @s funkytoc.moon.particle.dust 10