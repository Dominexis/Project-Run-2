execute if score temp inquognito.keypad matches 0 run tag @e[tag=inquognito.keypad.key.0] add inquognitokeypush
execute if score temp inquognito.keypad matches 1 run tag @e[tag=inquognito.keypad.key.1] add inquognitokeypush
execute if score temp inquognito.keypad matches 2 run tag @e[tag=inquognito.keypad.key.2] add inquognitokeypush
execute if score temp inquognito.keypad matches 3 run tag @e[tag=inquognito.keypad.key.3] add inquognitokeypush
execute if score temp inquognito.keypad matches 4 run tag @e[tag=inquognito.keypad.key.4] add inquognitokeypush
execute if score temp inquognito.keypad matches 5 run tag @e[tag=inquognito.keypad.key.5] add inquognitokeypush
execute if score temp inquognito.keypad matches 6 run tag @e[tag=inquognito.keypad.key.6] add inquognitokeypush
execute if score temp inquognito.keypad matches 7 run tag @e[tag=inquognito.keypad.key.7] add inquognitokeypush
execute if score temp inquognito.keypad matches 8 run tag @e[tag=inquognito.keypad.key.8] add inquognitokeypush
execute if score temp inquognito.keypad matches 9 run tag @e[tag=inquognito.keypad.key.9] add inquognitokeypush
execute if score temp inquognito.keypad matches 10 run tag @e[tag=inquognito.keypad.key.v] add inquognitokeypush
execute if score temp inquognito.keypad matches -1 run tag @e[tag=inquognito.keypad.key.x] add inquognitokeypush

execute as @e[tag=inquognitokeypush] at @s if score @s inquognito.keypad matches ..0 run tp @s ^ ^ ^-0.05
scoreboard players set @e[tag=inquognitokeypush] inquognito.keypad 3

tag @e[tag=pr.target] remove inquognitokeypush
