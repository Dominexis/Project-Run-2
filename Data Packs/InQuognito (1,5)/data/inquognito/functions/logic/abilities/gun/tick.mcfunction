function inquognito:logic/abilities/gun/move_forward
execute at @s if entity @e[type=minecraft:marker,tag=inquognito.gun,distance=..0.1] run function inquognito:logic/abilities/gun/move_forward
execute at @s if entity @e[type=minecraft:marker,tag=inquognito.gun,distance=..0.1] run function inquognito:logic/abilities/gun/move_forward
execute at @s if entity @e[type=minecraft:marker,tag=inquognito.gun,distance=..0.1] run function inquognito:logic/abilities/gun/move_forward
execute at @s if entity @e[type=minecraft:marker,tag=inquognito.gun,distance=..0.1] run function inquognito:logic/abilities/gun/move_forward

scoreboard players add @s temp 1
kill @s[scores={temp=30..}]
