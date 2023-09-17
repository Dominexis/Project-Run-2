scoreboard players add @s inquognito.transmission.tick 1

tellraw @s[scores={inquognito.transmission.tick=60}] [{"text":"??? | ","color":"light_purple"},{"text":"You arrogant pest.","color":"white"}]
tellraw @s[scores={inquognito.transmission.tick=120}] [{"text":"??? | ","color":"light_purple"},{"text":"I gave you a gift, and yet you reject me.","color":"white"}]
tellraw @s[scores={inquognito.transmission.tick=180}] [{"text":"??? | ","color":"light_purple"},{"text":"Don't you get it? You wouldn't be here if not for my help.","color":"white"}]

execute if score @s inquognito.transmission.tick matches 180.. run function inquognito:logic/transmissions/end
