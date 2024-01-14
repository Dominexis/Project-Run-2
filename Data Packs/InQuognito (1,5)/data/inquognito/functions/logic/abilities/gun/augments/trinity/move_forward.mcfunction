execute unless block ~ ~ ~ #inquognito:passthrough run kill @s

execute anchored eyes positioned ^ ^ ^ anchored feet run function inquognito:logic/abilities/gun/augments/trinity/raycast/loop

teleport @s ^ ^ ^0.25

scoreboard players add @s inquognito.temp 10
kill @s[scores={inquognito.temp=900..}]

return 1