# Generated using Animautomate v1.0.0 By KelloVerra
# Run this function as an item display entity per tick, entity will automatically terminated when the max frame is reached
# Example of execution: 
# /execute as @e[type=item_display,tag=pr.target,tag=!pr.ignore,tag=<your_tag>] run function <your_function_namespace>:func

scoreboard players add @s func.frame 1

execute if score @s func.frame matches 1 run data modify entity @s item.tag.CustomModelData set value 1000
execute if score @s func.frame matches 3 run data modify entity @s item.tag.CustomModelData set value 1001
execute if score @s func.frame matches 5 run data modify entity @s item.tag.CustomModelData set value 1002
execute if score @s func.frame matches 6 run data modify entity @s item.tag.CustomModelData set value 1003
execute if score @s func.frame matches 7 run data modify entity @s item.tag.CustomModelData set value 1004
execute if score @s func.frame matches 8 run data modify entity @s item.tag.CustomModelData set value 1005
execute if score @s func.frame matches 9 run data modify entity @s item.tag.CustomModelData set value 1006
execute if score @s func.frame matches 10 run data modify entity @s item.tag.CustomModelData set value 1007
execute if score @s func.frame matches 12 run function kello:entity/decal/component/chain_platform/animation/yellow_log_end