setblock ~ ~ ~ minecraft:polished_blackstone_button[face=wall,facing=north,powered=false]

teleport @s ~2 ~53.5 ~ 180.0 0.0
execute positioned ~2 ~53.5 ~ run function pr:player/checkpoint/mark_pos

scoreboard players set @s inquognito.floor 0
