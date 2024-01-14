# teleports and updates existing usable armor stand or summons new one
execute as @e[distance=..1,tag=piemel.swingtargetindicator,tag=pr.target] run tag @s add piemel.new
execute as @e[distance=..1,tag=piemel.swingtargetindicator,tag=pr.target] run tp @s ~ ~ ~
execute unless entity @e[distance=..1,tag=piemel.new,tag=pr.target] run summon minecraft:armor_stand ~ ~ ~ {Tags:["piemel.swingtargetindicator","piemel.new","pr.target"],ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:10062},Count:1b}],Invisible:1b,NoGravity:1b,DisabledSlots:4144959}
return 1