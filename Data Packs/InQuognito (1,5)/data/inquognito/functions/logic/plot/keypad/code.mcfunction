execute as @e[tag=inquognito.keypad.key.1.button] on target run scoreboard players set temp inquognito.keypad 1
execute as @e[tag=inquognito.keypad.key.1.button] on attacker run scoreboard players set temp inquognito.keypad 1
execute as @e[tag=inquognito.keypad.key.2.button] on target run scoreboard players set temp inquognito.keypad 2
execute as @e[tag=inquognito.keypad.key.2.button] on attacker run scoreboard players set temp inquognito.keypad 2
execute as @e[tag=inquognito.keypad.key.3.button] on target run scoreboard players set temp inquognito.keypad 3
execute as @e[tag=inquognito.keypad.key.3.button] on attacker run scoreboard players set temp inquognito.keypad 3
execute as @e[tag=inquognito.keypad.key.4.button] on target run scoreboard players set temp inquognito.keypad 4
execute as @e[tag=inquognito.keypad.key.4.button] on attacker run scoreboard players set temp inquognito.keypad 4
execute as @e[tag=inquognito.keypad.key.5.button] on target run scoreboard players set temp inquognito.keypad 5
execute as @e[tag=inquognito.keypad.key.5.button] on attacker run scoreboard players set temp inquognito.keypad 5
execute as @e[tag=inquognito.keypad.key.6.button] on target run scoreboard players set temp inquognito.keypad 6
execute as @e[tag=inquognito.keypad.key.6.button] on attacker run scoreboard players set temp inquognito.keypad 6
execute as @e[tag=inquognito.keypad.key.7.button] on target run scoreboard players set temp inquognito.keypad 7
execute as @e[tag=inquognito.keypad.key.7.button] on attacker run scoreboard players set temp inquognito.keypad 7
execute as @e[tag=inquognito.keypad.key.8.button] on target run scoreboard players set temp inquognito.keypad 8
execute as @e[tag=inquognito.keypad.key.8.button] on attacker run scoreboard players set temp inquognito.keypad 8
execute as @e[tag=inquognito.keypad.key.9.button] on target run scoreboard players set temp inquognito.keypad 9
execute as @e[tag=inquognito.keypad.key.9.button] on attacker run scoreboard players set temp inquognito.keypad 9
execute as @e[tag=inquognito.keypad.key.0.button] on target run scoreboard players set temp inquognito.keypad 0
execute as @e[tag=inquognito.keypad.key.0.button] on attacker run scoreboard players set temp inquognito.keypad 0
execute as @e[tag=inquognito.keypad.key.x.button] on target run scoreboard players set temp inquognito.keypad -1
execute as @e[tag=inquognito.keypad.key.x.button] on attacker run scoreboard players set temp inquognito.keypad -1
execute as @e[tag=inquognito.keypad.key.v.button] on target run scoreboard players set temp inquognito.keypad 10
execute as @e[tag=inquognito.keypad.key.v.button] on attacker run scoreboard players set temp inquognito.keypad 10

function inquognito:logic/plot/keypad/push
execute if score temp inquognito.keypad matches 0..9 run function inquognito:logic/plot/keypad/09
execute if score temp inquognito.keypad matches -1 run function inquognito:logic/plot/keypad/del
execute if score temp inquognito.keypad matches 10 run function inquognito:logic/plot/keypad/test

tag @s remove inquognito.key.click

scoreboard players reset temp inquognito.keypad

execute as @e[tag=inquognitokey] run data remove entity @s attack
execute as @e[tag=inquognitokey] run data remove entity @s interaction
