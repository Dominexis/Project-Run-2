function inquognito:logic/abilities/gun/move_forward
execute at @s if entity @e[type=minecraft:marker,distance=..0.1,tag=inquognito.gun] run function inquognito:logic/abilities/gun/move_forward
execute at @s if entity @e[type=minecraft:marker,distance=..0.1,tag=inquognito.gun] run function inquognito:logic/abilities/gun/move_forward
execute at @s if entity @e[type=minecraft:marker,distance=..0.1,tag=inquognito.gun] run function inquognito:logic/abilities/gun/move_forward
execute at @s if entity @e[type=minecraft:marker,distance=..0.1,tag=inquognito.gun] run function inquognito:logic/abilities/gun/move_forward

scoreboard players add @s inquognito.temp 1
kill @s[scores={inquognito.temp=20..}]

return 1