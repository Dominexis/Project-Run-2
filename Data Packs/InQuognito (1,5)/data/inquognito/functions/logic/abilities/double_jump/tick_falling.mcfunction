execute unless block ~ ~-0.75 ~ #inquognito:passthrough run effect give @s[scores={inquognito.doubleJump.cooldown=..5}] minecraft:slow_falling 1 0 true

execute unless block ~ ~-0.1 ~ #inquognito:passthrough run function inquognito:logic/abilities/double_jump/reset

return 1