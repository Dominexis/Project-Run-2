execute unless score @s inquognito.doubleJump.cooldown matches 1.. if entity @s[tag=!inquognito.doubleJumpUsed,predicate=inquognito:flag/sneaking] if block ~ ~-0.1 ~ minecraft:air run function inquognito:logic/abilities/double_jump/activate

execute if score @s inquognito.doubleJump.cooldown matches 1.. run function inquognito:logic/abilities/double_jump/tick

execute unless block ~ ~-0.1 ~ minecraft:air run tag @s[tag=inquognito.doubleJumpUsed] remove inquognito.doubleJumpUsed
