# display particles in direction of execution (facing current target)
particle minecraft:dust 0 1 0 1 ^ ^ ^1 0 0 0 1 1 force @s
particle minecraft:dust 0 1 0 1 ^ ^ ^.8 0 0 0 1 1 force @s
particle minecraft:dust 0 1 0 1 ^ ^ ^.6 0 0 0 1 1 force @s
particle minecraft:dust 0 1 0 1 ^ ^ ^.4 0 0 0 1 1 force @s
particle minecraft:dust 0 1 0 1 ^ ^ ^.2 0 0 0 1 1 force @s
particle minecraft:dust 0 1 0 1 ^ ^ ^ 0 0 0 1 1 force @s
particle minecraft:dust 0 1 0 1 ^ ^ ^-.2 0 0 0 1 1 force @s
particle minecraft:dust 0 1 0 1 ^ ^ ^-.4 0 0 0 1 1 force @s
particle minecraft:dust 0 1 0 1 ^ ^ ^-.6 0 0 0 1 1 force @s
particle minecraft:dust 0 1 0 1 ^ ^ ^-.8 0 0 0 1 1 force @s
particle minecraft:dust 0 1 0 1 ^ ^ ^-1 0 0 0 1 1 force @s

# offset particles for arrow
execute rotated ~-30 0 run particle minecraft:dust 0 1 0 1 ^ ^ ^.8 0 0 0 1 1 force @s
execute rotated ~-15 0 run particle minecraft:dust 0 1 0 1 ^ ^ ^.9 0 0 0 1 1 force @s
execute rotated ~30 0 run particle minecraft:dust 0 1 0 1 ^ ^ ^.8 0 0 0 1 1 force @s
execute rotated ~15 0 run particle minecraft:dust 0 1 0 1 ^ ^ ^.9 0 0 0 1 1 force @s
return 1