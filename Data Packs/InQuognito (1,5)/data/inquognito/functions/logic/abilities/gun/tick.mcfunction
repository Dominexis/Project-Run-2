execute unless entity @s[tag=inquognito.gun.trinity] run function inquognito:logic/abilities/gun/tick_default
execute if entity @s[tag=inquognito.gun.trinity] run function inquognito:logic/abilities/gun/augments/trinity/raycast/start

return 1