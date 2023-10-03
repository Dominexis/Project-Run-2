# teleports and updates existing usable armor stand or summons new one
execute as @e[tag=piemel.grapplingtarget,tag=pr.target,distance=..1] run tag @s add piemel.new
execute as @e[tag=piemel.grapplingtarget,tag=pr.target,distance=..1] run tp @s ~ ~ ~
execute unless entity @e[tag=piemel.new,tag=pr.target,distance=..1] run summon armor_stand ~ ~ ~ {Tags:["piemel.grapplingtarget","piemel.new","pr.target"],ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:10062}}],Invisible:1b,NoGravity:1b,DisabledSlots:4144959,Small:1b}