scoreboard players add @s inquognito.transmission.tick 1

tellraw @s[scores={inquognito.transmission.tick=1}] [{"text":"Simaris | ","color":"aqua","type":"text"},{"text":"Hunter, the barrier in this room appears to only have been accessible to these... previous employees.","color":"white","type":"text"}]
tellraw @s[scores={inquognito.transmission.tick=60}] [{"text":"Simaris | ","color":"aqua","type":"text"},{"text":"It seems like you will need to construct an access code by collecting DNA samples.","color":"white","type":"text"}]
tellraw @s[scores={inquognito.transmission.tick=120}] [{"text":"Simaris | ","color":"aqua","type":"text"},{"text":"You may have to do this... forcibly.","color":"white","type":"text"}]

execute if score @s inquognito.transmission.tick matches 120.. run function inquognito:logic/transmissions/end

return 1