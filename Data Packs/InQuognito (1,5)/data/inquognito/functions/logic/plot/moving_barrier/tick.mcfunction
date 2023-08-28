execute positioned ^1 ^-2 ^ as @e[type=minecraft:marker,tag=inquognito.gun,dy=4] run kill @s
execute positioned ^ ^-2 ^ as @e[type=minecraft:marker,tag=inquognito.gun,dy=4] run kill @s

scoreboard players add @s inquognito.temp 1

execute if score @s inquognito.temp matches 1..30 run teleport @s ^-0.1 ^ ^
execute if score @s inquognito.temp matches 31..60 run teleport @s ^0.1 ^ ^

execute if score @s inquognito.temp matches 61.. run scoreboard players set @s inquognito.temp 0
