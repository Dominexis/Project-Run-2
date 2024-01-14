scoreboard players add @s inquognito.dialogue.tick 1

execute if score @s inquognito.dialogue.tick matches 1 run tag @s add inquognito.escaping

tellraw @s[scores={inquognito.dialogue.tick=60}] [{"text":"??? | ","color":"light_purple","type":"text"},{"text":"Do you think... you get to RUN FROM ME??","color":"white","type":"text"}]
tellraw @s[scores={inquognito.dialogue.tick=120}] [{"text":"??? | ","color":"light_purple","type":"text"},{"text":"YOU WILL NOT LEAVE THIS PLACE ALIVE!!","color":"white","type":"text"}]

execute if score @s inquognito.dialogue.tick matches 120.. run function inquognito:logic/plot/boss/dialogue/reset

return 1