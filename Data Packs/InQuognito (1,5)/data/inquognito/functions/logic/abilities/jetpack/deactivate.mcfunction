scoreboard players set @s inquognito.jetpack.duration 0

effect clear @s minecraft:levitation
effect clear @s minecraft:slow_falling

execute if score @s inquognito.jetpack.fuel < jetpack.maxFuel vars run function inquognito:logic/abilities/jetpack/update

return 1