teleport @s ~ ~ ~ ~ ~

execute rotated as @s positioned 0.0 0.0 0.0 run teleport @s ^ ^ ^1.5

data modify storage inquognito:data Motion set from entity @s Pos

execute positioned ^ ^ ^1 summon minecraft:armor_stand run function inquognito:logic/abilities/gun/augments/nova/init/projectile

kill @s
