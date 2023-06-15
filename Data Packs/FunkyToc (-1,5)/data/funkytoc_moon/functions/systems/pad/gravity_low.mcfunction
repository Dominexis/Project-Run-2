tag @s add funkytoc.moon.gravity.low
attribute @s minecraft:generic.movement_speed modifier add 26-06-1990-0-001 funkytoc.gravity.speed -.03 add
effect give @s minecraft:slow_falling 3600 0 true

scoreboard players set @s funkytoc.moon.jump 0
scoreboard players set @s funkytoc.moon.particle.dust 0

# fx
playsound minecraft:block.beacon.activate player @s ~ ~ ~ 1 2 1
