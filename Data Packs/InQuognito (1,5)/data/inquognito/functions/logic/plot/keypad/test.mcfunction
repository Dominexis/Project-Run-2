scoreboard players operation code inquognito.keypad = key.1 inquognito.keypad
scoreboard players operation code inquognito.keypad *= #10 pr.value
scoreboard players operation code inquognito.keypad += key.2 inquognito.keypad
scoreboard players operation code inquognito.keypad *= #10 pr.value
scoreboard players operation code inquognito.keypad += key.3 inquognito.keypad
scoreboard players operation code inquognito.keypad *= #10 pr.value
scoreboard players operation code inquognito.keypad += key.4 inquognito.keypad

execute as @e[tag=inquognito.keypad] if score @s inquognito.keypad = code inquognito.keypad run function inquognito:logic/plot/keypad/correct
execute if score correct inquognito.keypad matches 0 run function inquognito:logic/plot/keypad/error

scoreboard players set key.1 inquognito.keypad 0
scoreboard players set key.2 inquognito.keypad 0
scoreboard players set key.3 inquognito.keypad 0
scoreboard players set key.4 inquognito.keypad 0
function inquognito:logic/plot/keypad/update

scoreboard players set correct inquognito.keypad 0

return 1