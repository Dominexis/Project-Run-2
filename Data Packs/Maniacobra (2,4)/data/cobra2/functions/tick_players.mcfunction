execute store result score @s cobra2.temp run clear @s iron_boots 0
clear @s[tag=cobra2.down,scores={cobra2.temp=1..}] iron_boots

execute store result score @s cobra2.temp run clear @s netherite_boots 0
clear @s[tag=cobra2.up,scores={cobra2.temp=1..}] netherite_boots



data modify storage cobra2:data tag set from entity @s {}
execute store result score @s cobra2.y run data get storage cobra2:data tag.Pos[1]
execute store result score @s cobra2.ground run data get storage cobra2:data tag.OnGround
execute store result score @s cobra2.inv run data get storage cobra2:data tag.Inventory[0].Slot

execute as @s[scores={cobra2.flip1=1..}] run function cobra2:flip
execute as @s[scores={cobra2.flip2=1..}] run function cobra2:flip

kill @s[scores={cobra2.y=36..37}]
kill @s[scores={cobra2.y=5..6}]

execute if block ~ ~ ~ minecraft:white_stained_glass run kill @s
execute if block ~ ~ ~ minecraft:black_stained_glass run kill @s
execute as @s[scores={cobra2.ground=1}] if block ~ ~-1 ~ minecraft:white_stained_glass run kill @s
execute as @s[scores={cobra2.ground=1}] if block ~ ~-1 ~ minecraft:black_stained_glass run kill @s
execute as @s[scores={cobra2.ground=1}] if block ~-1 ~-1 ~ minecraft:white_stained_glass run kill @s
execute as @s[scores={cobra2.ground=1}] if block ~-1 ~-1 ~ minecraft:black_stained_glass run kill @s
execute as @s[scores={cobra2.ground=1}] if block ~1 ~-1 ~ minecraft:white_stained_glass run kill @s
execute as @s[scores={cobra2.ground=1}] if block ~1 ~-1 ~ minecraft:black_stained_glass run kill @s
execute as @s[scores={cobra2.ground=1}] if block ~ ~-1 ~-1 minecraft:white_stained_glass run kill @s
execute as @s[scores={cobra2.ground=1}] if block ~ ~-1 ~-1 minecraft:black_stained_glass run kill @s
execute as @s[scores={cobra2.ground=1}] if block ~ ~-1 ~1 minecraft:white_stained_glass run kill @s
execute as @s[scores={cobra2.ground=1}] if block ~ ~-1 ~1 minecraft:black_stained_glass run kill @s
execute as @s[scores={cobra2.ground=1}] if block ~-1 ~-1 ~-1 minecraft:white_stained_glass run kill @s
execute as @s[scores={cobra2.ground=1}] if block ~-1 ~-1 ~-1 minecraft:black_stained_glass run kill @s
execute as @s[scores={cobra2.ground=1}] if block ~-1 ~-1 ~1 minecraft:white_stained_glass run kill @s
execute as @s[scores={cobra2.ground=1}] if block ~-1 ~-1 ~1 minecraft:black_stained_glass run kill @s
execute as @s[scores={cobra2.ground=1}] if block ~1 ~-1 ~-1 minecraft:white_stained_glass run kill @s
execute as @s[scores={cobra2.ground=1}] if block ~1 ~-1 ~-1 minecraft:black_stained_glass run kill @s
execute as @s[scores={cobra2.ground=1}] if block ~1 ~-1 ~1 minecraft:white_stained_glass run kill @s
execute as @s[scores={cobra2.ground=1}] if block ~1 ~-1 ~1 minecraft:black_stained_glass run kill @s

execute as @s[tag=cobra2.has_boots] unless entity @s[scores={cobra2.inv=4}] run function cobra2:give_boots
