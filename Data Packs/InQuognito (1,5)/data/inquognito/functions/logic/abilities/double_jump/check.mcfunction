execute unless score @s inquognito.doubleJump.cooldown matches 1.. if entity @s[tag=!inquognito.doubleJumpUsed,predicate=inquognito:flag/sneaking] if block ~ ~-0.1 ~ #inquognito:passthrough run function inquognito:logic/abilities/double_jump/activate

execute if score @s inquognito.doubleJump.cooldown matches 1.. run function inquognito:logic/abilities/double_jump/tick

execute if entity @s[tag=inquognito.doubleJumpUsed] run function inquognito:logic/abilities/double_jump/tick_falling

return 1