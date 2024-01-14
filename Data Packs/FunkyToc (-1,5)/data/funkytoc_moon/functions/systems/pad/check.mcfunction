advancement revoke @s only funkytoc_moon:on_pad

execute if entity @s[tag=!funkytoc.moon.gravity.low] if block ~ ~-1 ~ minecraft:orange_concrete run function funkytoc_moon:systems/pad/gravity_low
execute if entity @s[tag=funkytoc.moon.gravity.low] if block ~ ~-1 ~ minecraft:black_concrete run function funkytoc_moon:systems/pad/gravity_normal
execute if entity @s if block ~ ~-1 ~ minecraft:light_blue_concrete run function funkytoc_moon:systems/oxygen/refill_start
return 1