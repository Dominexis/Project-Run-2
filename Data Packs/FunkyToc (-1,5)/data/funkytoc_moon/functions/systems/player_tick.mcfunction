function funkytoc_moon:systems/oxygen/tick
execute if block ~ ~ ~ minecraft:iron_trapdoor run function funkytoc_moon:systems/pad/check
execute if entity @s[tag=funkytoc.moon.gravity.low] run function funkytoc_moon:systems/gravity/tick
effect give @s minecraft:night_vision infinite 0 true

return 1