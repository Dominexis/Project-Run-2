scoreboard players operation @s kello.entity.id = #global kello.entity.id

tag @s add kello.entity
tag @s add kello.entity.type.checkpoint
tag @s add kello.entity.part.flag
execute on passengers run function kello:entity/checkpoint/spawn/flag_tags