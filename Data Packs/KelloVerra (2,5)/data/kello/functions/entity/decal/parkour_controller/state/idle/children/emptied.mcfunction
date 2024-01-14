execute if entity @s[tag=kello.entity.type.small] run fill ~ ~ ~ ~ ~-2 ~ minecraft:air replace minecraft:barrier
execute if entity @s[tag=kello.entity.type.large] run fill ~-1 ~ ~-1 ~1 ~-2 ~1 minecraft:air replace minecraft:barrier

scoreboard players operation #local kello.entity.id = @s kello.entity.id
scoreboard players operation #local kello.level.id = @s kello.level.id
scoreboard players set #level_creation_mode kello.value 1
execute if entity @s[tag=kello.entity.type.small] run function kello:entity/placedicator/small/spawn/main
execute if entity @s[tag=kello.entity.type.large] run function kello:entity/placedicator/large/spawn/main
scoreboard players set #level_creation_mode kello.value 0
tag @s add kello.emptied

tag @s remove kello.entity.parkour_controller_empty_in_progress

execute on passengers if entity @s[type=minecraft:snowball,tag=kello.decal.pointer_controller] on origin run scoreboard players remove @s kello.entity.active_children 1
execute if score @s kello.entity.active_children matches ..-1 run scoreboard players set @s kello.entity.active_children 0
return 1