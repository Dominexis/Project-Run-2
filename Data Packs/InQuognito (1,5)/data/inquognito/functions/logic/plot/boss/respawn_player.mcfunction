execute unless score @s inquognito.boss.health matches 99 run teleport @s ~31 ~7 ~3 0.0 0.0
execute if score @s inquognito.boss.health matches 99 run kill @s

effect give @s minecraft:wither 2 2 true

return 1