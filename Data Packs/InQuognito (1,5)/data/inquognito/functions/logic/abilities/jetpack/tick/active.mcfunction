scoreboard players remove @s[scores={inquognito.jetpack.fuel=1..}] inquognito.jetpack.fuel 1
scoreboard players add @s inquognito.jetpack.duration 1

particle minecraft:dust_color_transition 1.0 0.0 1.0 0.75 0.75 0.0 0.75 ~ ~ ~ 0.3 0.0 0.3 0.0 15 normal @a
execute if score @s inquognito.jetpack.duration matches ..5 run effect give @s minecraft:slow_falling infinite 0 true

execute if score @s inquognito.jetpack.duration matches 6..10 run effect give @s minecraft:levitation infinite 0 true
execute if score @s inquognito.jetpack.duration matches 11..15 run effect give @s minecraft:levitation infinite 1 true
execute if score @s inquognito.jetpack.duration matches 16..20 run effect give @s minecraft:levitation infinite 2 true
execute if score @s inquognito.jetpack.duration matches 21..25 run effect give @s minecraft:levitation infinite 3 true
execute if score @s inquognito.jetpack.duration matches 26..30 run effect give @s minecraft:levitation infinite 4 true
execute if score @s inquognito.jetpack.duration matches 31.. run effect give @s minecraft:levitation infinite 5 true

scoreboard players set @s inquognito.jetpack.cooldown 40

execute if score @s inquognito.jetpack.fuel matches ..0 run function inquognito:logic/abilities/jetpack/deactivate

scoreboard players set @s inquognito.doubleJump.cooldown 2
