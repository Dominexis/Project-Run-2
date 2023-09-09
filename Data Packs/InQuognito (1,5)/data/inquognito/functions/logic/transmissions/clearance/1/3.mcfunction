scoreboard players add @s inquognito.transmission.tick 1

tellraw @s[scores={inquognito.transmission.tick=1}] [{"text":"Simaris | ","color":"aqua"},{"text":"Hunter, I have synthesized a passcode for you.","color":"white"}]
tellraw @s[scores={inquognito.transmission.tick=60}] [{"text":"Simaris | ","color":"aqua"},{"text":"The facility's operator has granted you clearance.","color":"white"}]
tellraw @s[scores={inquognito.transmission.tick=120}] [{"text":"Simaris | ","color":"aqua"},{"text":"The barrier you saw in the main room appears to be accessible at your clearance level.","color":"white"}]
tellraw @s[scores={inquognito.transmission.tick=180}] [{"text":"Simaris | ","color":"aqua"},{"text":"This is your primary objective. Please investigate at your earliest convenience.","color":"white"}]

execute if score @s inquognito.transmission.tick matches 180.. run function inquognito:logic/transmissions/end
