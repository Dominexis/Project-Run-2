setblock ~ ~ ~ minecraft:polished_blackstone_button[face=wall,facing=north,powered=false]

teleport @s ~-5 ~2 ~13 -180.0 0.0
execute positioned ~-5 ~2 ~13 run function pr:player/checkpoint/mark_pos

scoreboard players set @s inquognito.floor -1
