execute if entity @s[tag=kello.entity.type.small] run fill ~ ~ ~ ~ ~-2 ~ air replace barrier
execute if entity @s[tag=kello.entity.type.large] run fill ~-1 ~ ~-1 ~1 ~-2 ~1 air replace barrier

tag @s add kello.emptied
tag @s remove kello.entity.parkour_controller_empty_in_progress

execute on passengers if entity @s[type=snowball,tag=kello.decal.pointer_controller] on origin run scoreboard players remove @s kello.entity.active_children 1
execute if score @s kello.entity.active_children matches ..-1 run scoreboard players set @s kello.entity.active_children 0