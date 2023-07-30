execute at @e[type=minecraft:item_display,tag=inquognito.gun,limit=1] align xyz if entity @s[tag=!inquognito.gun,dx=0] run function inquognito:logic/abilities/gun/acquire

execute at @e[type=minecraft:item_display,tag=inquognito.suit.mk2,limit=1] align xyz if score @s[dx=0] inquognito.suit matches 1 run function inquognito:logic/suits/mk2
execute at @e[type=minecraft:item_display,tag=inquognito.suit.mk3,limit=1] align xyz if score @s[dx=0] inquognito.suit matches 2 run function inquognito:logic/suits/mk3

execute at @e[type=minecraft:item_display,tag=inquognito.code.1,limit=1] align xyz if entity @s[tag=!inquognito.code.1,dx=0] run function inquognito:logic/clearance/1/codes/1
execute at @e[type=minecraft:item_display,tag=inquognito.code.2,limit=1] align xyz if entity @s[tag=!inquognito.code.2,dx=0] run function inquognito:logic/clearance/1/codes/2
execute at @e[type=minecraft:item_display,tag=inquognito.code.3,limit=1] align xyz if entity @s[tag=!inquognito.code.3,dx=0] run function inquognito:logic/clearance/1/codes/3

function inquognito:logic/tick/highlight_pickups
