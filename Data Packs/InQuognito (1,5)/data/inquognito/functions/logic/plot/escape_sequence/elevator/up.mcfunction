setblock ~ ~ ~ minecraft:polished_blackstone_button[face=wall,facing=north,powered=false]

teleport @s ~-3 ~57 ~14 -180.0 0.0
execute positioned ~-3 ~57 ~14 run function pr:player/checkpoint/mark_pos

scoreboard players set @s inquognito.floor 100
