setblock ~ ~ ~ minecraft:polished_blackstone_button[face=wall,facing=south,powered=false]

teleport @s ~53 ~49.5 ~25 90.0 0.0
execute positioned ~53 ~49.5 ~25 run function pr:player/checkpoint/mark_pos

return 1