# Generated using Animautomate v1.0.0 By KelloVerra
# Run this function as an item display entity per tick

scoreboard players remove @s kello.entity.timer 1

execute if score @s kello.entity.timer matches 8 run item replace entity @s container.0 with minecraft:magenta_stained_glass_pane{CustomModelData:351926}
execute if score @s kello.entity.timer matches 7 run data modify entity @s item.tag.CustomModelData set value 351927
execute if score @s kello.entity.timer matches 6 run data modify entity @s item.tag.CustomModelData set value 351933
execute if score @s kello.entity.timer matches 5 run data modify entity @s item.tag.CustomModelData set value 351934
execute if score @s kello.entity.timer matches 4 run data modify entity @s item.tag.CustomModelData set value 351935
execute if score @s kello.entity.timer matches 3 run data modify entity @s item.tag.CustomModelData set value 351936
execute if score @s kello.entity.timer matches 2 run data modify entity @s item.tag.CustomModelData set value 351937
execute if score @s kello.entity.timer matches 1 run data modify entity @s item.tag.CustomModelData set value 351938
execute if score @s kello.entity.timer matches 0 run tag @s remove kello.entity.anim.groundindic_construct
return 1