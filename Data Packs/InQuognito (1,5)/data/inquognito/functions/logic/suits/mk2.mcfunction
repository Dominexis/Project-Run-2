function inquognito:logic/suits/mk2_equip

function inquognito:logic/pickups/acquire

tellraw @s [{"text":"Item acquired: ","color":"yellow"},{"text":"Propulsion Suit","color":"aqua"}]
tellraw @s [{"text":"Incoming Transmission (Propulsion Suit) - [ Click to Accept ]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger inquognito.transmission set 6"}}]

playsound minecraft:entity.player.levelup master @s
