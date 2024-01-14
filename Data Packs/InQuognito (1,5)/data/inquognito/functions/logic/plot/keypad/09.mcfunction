#keypad 0~9 input

scoreboard players operation key.1 inquognito.keypad = key.2 inquognito.keypad
scoreboard players operation key.2 inquognito.keypad = key.3 inquognito.keypad
scoreboard players operation key.3 inquognito.keypad = key.4 inquognito.keypad
scoreboard players operation key.4 inquognito.keypad = temp inquognito.keypad

function inquognito:logic/plot/keypad/update

return 1