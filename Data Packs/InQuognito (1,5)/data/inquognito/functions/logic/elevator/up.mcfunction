teleport @s ~-3 ~57 ~14 -180.0 0.0

setblock ~-5 ~3 ~14 minecraft:polished_blackstone_button[face=wall,facing=north,powered=false]

scoreboard players set @s inquognito.floor 0

execute positioned ~0 ~49 ~-36 run function pr:player/checkpoint/mark_pos
