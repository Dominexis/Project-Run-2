data modify storage cobra2:data tag set from entity @s {}
execute store result score @s cobra2.y run data get storage cobra2:data tag.Pos[1]
execute store result score @s cobra2.ground run data get storage cobra2:data tag.OnGround
scoreboard players set @s cobra.inv 0
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

execute unless entity @s[scores={cobra2.inv=4},tag=!cobra2.has_boots] run function cobra2:give_boots
# execute unless entity @s[tag=!cobra2.has_boots,predicate=!cobra2:has_boots] run function cobra2:give_boots
