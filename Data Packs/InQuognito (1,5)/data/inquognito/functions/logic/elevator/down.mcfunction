teleport @s ~-5 ~2 ~13 -180.0 0.0

execute at @s run function pr:player/checkpoint/mark

setblock ~-3 ~58 ~15 minecraft:polished_blackstone_button[face=wall,facing=north,powered=false]

scoreboard players set @s inquognito.floor -1
