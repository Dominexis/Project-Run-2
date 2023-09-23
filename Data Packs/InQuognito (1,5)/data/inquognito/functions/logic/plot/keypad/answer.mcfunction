#all code list

summon minecraft:marker ~ ~ ~ {Tags:["inquognito","inquognito.keypad","inquognitokey"]}
summon minecraft:marker ~ ~ ~ {Tags:["inquognito","inquognito.keypad","inquognitokey"]}

scoreboard players set @e[tag=inquognito.keypad] inquognito.keypad -1

scoreboard players set @e[tag=inquognito.keypad,scores={inquognito.keypad=-1},limit=1] inquognito.keypad 3142
