tag @s remove funkytoc.moon.gravity.low
tag @s remove funkytoc.moon.o2.refill
tag @s remove pr.hide_timer

scoreboard players reset @s funkytoc.moon.particle.dust
scoreboard players reset @s funkytoc.moon.jump

item replace entity @s armor.head with minecraft:air

attribute @s minecraft:generic.movement_speed modifier remove 26-06-1990-0-001

effect clear @s minecraft:slow_falling
effect clear @s minecraft:levitation

return 1