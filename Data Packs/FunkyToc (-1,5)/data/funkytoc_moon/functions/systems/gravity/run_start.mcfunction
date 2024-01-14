advancement revoke @s only funkytoc_moon:sprint_on

effect give @s minecraft:levitation 1 1 true
execute if entity @s[scores={funkytoc.moon.particle.dust=0}] run playsound minecraft:block.stone.place player @s ~ ~ ~ .8 .5
execute if entity @s[scores={funkytoc.moon.particle.dust=0}] run particle minecraft:dust_color_transition .9 .9 .9 1.2 1 1 1 ~ ~.02 ~ .2 0 .2 0 10 normal @a[distance=..128,tag=pr.target]
scoreboard players set @s funkytoc.moon.particle.dust 8

return 1