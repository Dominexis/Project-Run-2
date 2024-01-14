# Generated using Animautomate v1.0.0 By KelloVerra
# Run this function as an item display entity per tick

scoreboard players remove @s kello.entity.timer 1

execute if score @s kello.entity.timer matches 10 run data modify entity @s item.tag.CustomModelData set value 351943
execute if score @s kello.entity.timer matches 9 run data modify entity @s item.tag.CustomModelData set value 351944
execute if score @s kello.entity.timer matches 8 run data modify entity @s item.tag.CustomModelData set value 351945
execute if score @s kello.entity.timer matches 7 run data modify entity @s item.tag.CustomModelData set value 351946
execute if score @s kello.entity.timer matches 6 run data modify entity @s item.tag.CustomModelData set value 351947
execute if score @s kello.entity.timer matches 5 run data modify entity @s item.tag.CustomModelData set value 351941
execute if score @s kello.entity.timer matches 4 run data modify entity @s item.tag.CustomModelData set value 351923
execute if score @s kello.entity.timer matches 3 run data modify entity @s item.tag.CustomModelData set value 351956
execute if score @s kello.entity.timer matches 2 run data modify entity @s item.tag.CustomModelData set value 351957
execute if score @s kello.entity.timer matches 1 run data modify entity @s item.tag.CustomModelData set value 351958
return 1