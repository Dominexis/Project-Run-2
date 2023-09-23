scoreboard players add @s inquognito.dialogue.tick 1

tellraw @s[scores={inquognito.dialogue.tick=60}] [{"text":"??? | ","color":"light_purple"},{"text":"You arrogant pest.","color":"white"}]
tellraw @s[scores={inquognito.dialogue.tick=120}] [{"text":"??? | ","color":"light_purple"},{"text":"I gave you a gift, and yet you reject me.","color":"white"}]
tellraw @s[scores={inquognito.dialogue.tick=180}] [{"text":"??? | ","color":"light_purple"},{"text":"Don't you get it? You are only here because of me.","color":"white"}]

execute if score @s inquognito.dialogue.tick matches 180.. run function inquognito:logic/plot/boss/dialogue/reset
