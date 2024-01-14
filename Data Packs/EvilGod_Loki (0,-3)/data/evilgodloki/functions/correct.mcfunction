#correct code enter

scoreboard players set correct lokicode 1

title @a[tag=lokiclick,tag=pr.target] title ""
execute if entity @s[tag=lokiused,tag=pr.target] run title @a[tag=lokiclick,tag=pr.target] subtitle {"text":"This code has already been used.","color":"red","type":"text"}
execute unless entity @s[tag=lokiused,tag=pr.target] run title @a[tag=lokiclick,tag=pr.target] subtitle {"text":"Correct!","color":"gold","type":"text"}

execute unless entity @s[tag=lokiused,tag=pr.target] run playsound minecraft:entity.player.levelup block @a[tag=pr.target] ~ ~ ~ 2 1 0
execute unless entity @s[tag=lokiused,tag=pr.target] run scoreboard players add goal lokicode 1
execute unless entity @s[tag=lokiused,tag=pr.target] run tellraw @a[tag=pr.target] ["",{"selector":"@a[tag=lokiclick,tag=pr.target]","bold":true,"color":"gold","type":"selector"},{"text":" enter the correct code!","bold":true,"color":"green","type":"text"}]

tag @s add lokiused

execute if score goal lokicode matches 1 at @e[tag=lokig2,tag=pr.target] run setblock ~ ~ ~ minecraft:redstone_block
execute if score goal lokicode matches 2 at @e[tag=lokig4,tag=pr.target] run setblock ~ ~ ~ minecraft:redstone_block
#execute if score goal lokicode matches 3 at @e[tag=lokig3,tag=pr.target] run setblock ~ ~ ~ redstone_block
#execute if score goal lokicode matches 4 at @e[tag=lokig4,tag=pr.target] run setblock ~ ~ ~ redstone_block
#execute if score goal lokicode matches 5 at @e[tag=lokig5,tag=pr.target] run setblock ~ ~ ~ redstone_block
execute if score goal lokicode matches 2 run playsound minecraft:block.beacon.activate block @a[tag=pr.target] ~ ~ ~ 1 1 1
execute if score goal lokicode matches 2 run tellraw @a[tag=pr.target] {"text":"Door is open!","bold":true,"color":"dark_purple","type":"text"}
execute if score goal lokicode matches 17 run tellraw @a[tag=pr.target] {"text":"You did it! Or you just try all combinations?","bold":true,"color":"aqua","type":"text"}
return 1