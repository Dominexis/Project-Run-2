scoreboard players add @s inquognito.transmission.tick 1

tellraw @s[scores={inquognito.transmission.tick=1}] [{"text":"Simaris | ","color":"aqua"},{"text":"Hunter, the switch you just activated appears to be one of a set.","color":"white"}]
tellraw @s[scores={inquognito.transmission.tick=60}] [{"text":"Simaris | ","color":"aqua"},{"text":"Investigate the nearby rooms and look for similar switches.","color":"white"}]

execute if score @s inquognito.transmission.tick matches 60.. run function inquognito:logic/transmissions/end
