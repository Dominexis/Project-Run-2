# Generated using Animautomate v1.0.0 By KelloVerra
# Run this function as an item display entity per tick, entity will automatically terminated when the max frame is reached
# Example of execution: 
# /execute as @e[type=item_display,tag=pr.target,tag=!kello.ignore,tag=<your_tag>] run function <your_function_namespace>:func

# scoreboard players add @s func.frame 1

# execute if score @s func.frame matches 1 run data merge entity @s {item:{id:"minecraft:light_gray_dye",Count:1b,tag:{CustomModelData:0}}}
# execute if score @s func.frame matches 1 run data modify entity @s item.tag.CustomModelData set value 2000
# execute if score @s func.frame matches 3 run data modify entity @s item.tag.CustomModelData set value 2001
# execute if score @s func.frame matches 5 run data modify entity @s item.tag.CustomModelData set value 2002
# execute if score @s func.frame matches 6 run data modify entity @s item.tag.CustomModelData set value 2003
# execute if score @s func.frame matches 7 run data modify entity @s item.tag.CustomModelData set value 2004
# execute if score @s func.frame matches 8 run data modify entity @s item.tag.CustomModelData set value 2005
# execute if score @s func.frame matches 9 run data modify entity @s item.tag.CustomModelData set value 2006
# execute if score @s func.frame matches 10 run data modify entity @s item.tag.CustomModelData set value 2007
# execute if score @s func.frame matches 10 run scoreboard players set @s func.frame 0