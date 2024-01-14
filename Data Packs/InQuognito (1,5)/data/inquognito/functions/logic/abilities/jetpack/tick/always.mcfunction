execute if entity @s[predicate=inquognito:flag/sneaking] unless score @s inquognito.doubleJump.cooldown matches 2.. if block ~ ~-0.1 ~ #inquognito:passthrough run function inquognito:logic/abilities/jetpack/tick/active

execute if entity @s[scores={inquognito.jetpack.duration=1..},predicate=!inquognito:flag/sneaking] run function inquognito:logic/abilities/jetpack/deactivate
execute if entity @s[scores={inquognito.jetpack.duration=1..}] unless block ~ ~-0.1 ~ #inquognito:passthrough run function inquognito:logic/abilities/jetpack/deactivate

execute if score @s inquognito.jetpack.fuel < @s inquognito.energy unless score @s inquognito.jetpack.cooldown matches 1.. run scoreboard players add @s inquognito.jetpack.fuel 2
execute if score @s inquognito.jetpack.fuel > @s inquognito.energy run scoreboard players operation @s inquognito.jetpack.fuel = @s inquognito.energy
function inquognito:logic/abilities/jetpack/update

scoreboard players remove @s[scores={inquognito.jetpack.cooldown=1..}] inquognito.jetpack.cooldown 1

return 1