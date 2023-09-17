scoreboard players add @s inquognito.transmission.tick 1

tellraw @s[scores={inquognito.transmission.tick=1}] [{"text":"Simaris | ","color":"aqua"},{"text":"Hunter, the barrier in this room appears to only have been accessible to these... previous employees.","color":"white"}]
tellraw @s[scores={inquognito.transmission.tick=60}] [{"text":"Simaris | ","color":"aqua"},{"text":"It seems like you will need to construct an access code by collecting DNA samples.","color":"white"}]
tellraw @s[scores={inquognito.transmission.tick=120}] [{"text":"Simaris | ","color":"aqua"},{"text":"You may have to do this... forcibly.","color":"white"}]

execute if score @s inquognito.transmission.tick matches 120.. run function inquognito:logic/transmissions/end
