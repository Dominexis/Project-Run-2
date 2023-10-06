scoreboard players set @s inquognito.floor 99

effect clear @s minecraft:levitation

teleport @s ~1.5 ~106 ~6.5 0.0 0.0
execute positioned ~1.5 ~106 ~6.5 run function pr:player/checkpoint/mark_pos
