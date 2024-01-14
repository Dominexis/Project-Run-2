scoreboard players add @s inquognito.transmission.tick 1

tellraw @s[scores={inquognito.transmission.tick=1}] [{"text":"Simaris | ","color":"aqua","type":"text"},{"text":"Hunter, I have synthesized a passcode for you.","color":"white","type":"text"}]
tellraw @s[scores={inquognito.transmission.tick=60}] [{"text":"Simaris | ","color":"aqua","type":"text"},{"text":"The facility's operator has granted you clearance.","color":"white","type":"text"}]
tellraw @s[scores={inquognito.transmission.tick=120}] [{"text":"Simaris | ","color":"aqua","type":"text"},{"text":"The barrier you saw in the main room appears to be accessible at your clearance level.","color":"white","type":"text"}]
tellraw @s[scores={inquognito.transmission.tick=180}] [{"text":"Simaris | ","color":"aqua","type":"text"},{"text":"This is your primary objective. Please investigate at your earliest convenience.","color":"white","type":"text"}]

execute if score @s inquognito.transmission.tick matches 180.. run function inquognito:logic/transmissions/end

return 1