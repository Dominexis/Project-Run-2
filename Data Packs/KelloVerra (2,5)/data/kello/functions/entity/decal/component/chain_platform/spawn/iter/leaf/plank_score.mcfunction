# 9 Slicing

scoreboard players set #slice kello.decal 0

execute if block ^1 ^ ^ air run scoreboard players add #slice kello.decal 1
execute if block ^-1 ^ ^ air run scoreboard players add #slice kello.decal 2
execute if block ^ ^ ^1 air run scoreboard players add #slice kello.decal 4
execute if block ^ ^ ^-1 air run scoreboard players add #slice kello.decal 8

execute if score #slice kello.decal matches 01 run data modify entity @s item.tag.CustomModelData set value 351913
execute if score #slice kello.decal matches 02 run data modify entity @s item.tag.CustomModelData set value 351919
execute if score #slice kello.decal matches 03 run data modify entity @s item.tag.CustomModelData set value 351916
execute if score #slice kello.decal matches 04 run data modify entity @s item.tag.CustomModelData set value 351917
execute if score #slice kello.decal matches 05 run data modify entity @s item.tag.CustomModelData set value 351914
execute if score #slice kello.decal matches 06 run data modify entity @s item.tag.CustomModelData set value 351920
execute if score #slice kello.decal matches 07 run data modify entity @s item.tag.CustomModelData set value 351917
execute if score #slice kello.decal matches 08 run data modify entity @s item.tag.CustomModelData set value 351915
execute if score #slice kello.decal matches 09 run data modify entity @s item.tag.CustomModelData set value 351912
execute if score #slice kello.decal matches 10 run data modify entity @s item.tag.CustomModelData set value 351918
execute if score #slice kello.decal matches 11 run data modify entity @s item.tag.CustomModelData set value 351915
execute if score #slice kello.decal matches 12 run data modify entity @s item.tag.CustomModelData set value 351916
execute if score #slice kello.decal matches 13 run data modify entity @s item.tag.CustomModelData set value 351916
execute if score #slice kello.decal matches 14 run data modify entity @s item.tag.CustomModelData set value 351916
execute if score #slice kello.decal matches 15 run data modify entity @s item.tag.CustomModelData set value 351916