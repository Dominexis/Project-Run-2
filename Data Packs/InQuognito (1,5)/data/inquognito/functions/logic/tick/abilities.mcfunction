execute if entity @s[tag=inquognito.gun] at @s run function inquognito:logic/abilities/gun/check

execute if score @s inquognito.suit matches 2.. at @s run function inquognito:logic/abilities/double_jump/check

execute if score @s inquognito.suit matches 3 at @s run function inquognito:logic/abilities/jetpack/tick/always
