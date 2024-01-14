scoreboard players add @s inquognito.transmission.tick 1

tellraw @s[scores={inquognito.transmission.tick=1}] [{"text":"Simaris | ","color":"aqua","type":"text"},{"text":"Hunter, the switch you just activated appears to be one of a set.","color":"white","type":"text"}]
tellraw @s[scores={inquognito.transmission.tick=60}] [{"text":"Simaris | ","color":"aqua","type":"text"},{"text":"Investigate the nearby rooms and look for similar switches.","color":"white","type":"text"}]

execute if score @s inquognito.transmission.tick matches 60.. run function inquognito:logic/transmissions/end

return 1