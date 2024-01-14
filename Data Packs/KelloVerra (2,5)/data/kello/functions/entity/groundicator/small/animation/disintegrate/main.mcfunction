# Generated using Animautomate v1.0.0 By KelloVerra
# Run this function as an item display entity per tick

scoreboard players remove @s kello.entity.timer 1

execute if score @s kello.entity.timer matches 8 run data modify entity @s item.tag.CustomModelData set value 351938
execute if score @s kello.entity.timer matches 7 run data modify entity @s item.tag.CustomModelData set value 351939
execute if score @s kello.entity.timer matches 6 run data modify entity @s item.tag.CustomModelData set value 351940
execute if score @s kello.entity.timer matches 5 run data modify entity @s item.tag.CustomModelData set value 351928
execute if score @s kello.entity.timer matches 4 run data modify entity @s item.tag.CustomModelData set value 351929
execute if score @s kello.entity.timer matches 3 run data modify entity @s item.tag.CustomModelData set value 351930
execute if score @s kello.entity.timer matches 2 run data modify entity @s item.tag.CustomModelData set value 351931
execute if score @s kello.entity.timer matches 1 run data modify entity @s item.tag.CustomModelData set value 351932
return 1