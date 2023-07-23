#correct code enter

scoreboard players set correct lokicode 1

title @a[tag=lokiclick] title ""
execute if entity @s[tag=lokiused] run title @a[tag=lokiclick] subtitle {"text":"This code has already been used.","color":"red"}
execute unless entity @s[tag=lokiused] run title @a[tag=lokiclick] subtitle {"text":"Correct!","color":"gold"}

execute unless entity @s[tag=lokiused] run playsound entity.player.levelup block @a ~ ~ ~ 2 1 0
execute unless entity @s[tag=lokiused] run scoreboard players add goal lokicode 1
execute unless entity @s[tag=lokiused] run tellraw @a ["",{"selector":"@a[tag=lokiclick]","bold":true,"color":"gold"},{"text":" enter the correct code!","bold":true,"color":"green"}]

tag @s add lokiused

execute if score goal lokicode matches 1 at @e[tag=lokig1] run setblock ~ ~ ~ redstone_block
execute if score goal lokicode matches 2 at @e[tag=lokig2] run setblock ~ ~ ~ redstone_block
execute if score goal lokicode matches 3 at @e[tag=lokig3] run setblock ~ ~ ~ redstone_block
execute if score goal lokicode matches 4 at @e[tag=lokig4] run setblock ~ ~ ~ redstone_block
execute if score goal lokicode matches 5 at @e[tag=lokig5] run setblock ~ ~ ~ redstone_block
execute if score goal lokicode matches 5 run playsound block.beacon.activate block @a ~ ~ ~ 1 1 1
execute if score goal lokicode matches 5 run tellraw @a {"text":"Door is open!","bold":true,"color":"dark_purple"}
execute if score goal lokicode matches 17 run tellraw @a {"text":"You did it! Or you just try all combinations?","bold":true,"color":"aqua"}