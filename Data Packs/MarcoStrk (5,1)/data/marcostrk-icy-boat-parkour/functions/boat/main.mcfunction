# End NoGravity
execute at @s if block ~ ~ ~ minecraft:structure_void run data merge entity @s {NoGravity:0b}

# Kill empty boats
execute at @s unless entity @a[distance=..4,tag=pr.target] run kill @s
return 1