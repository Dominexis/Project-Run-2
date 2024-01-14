function inquognito:logic/suits/mk2_equip

function inquognito:logic/pickups/acquire

tellraw @s [{"text":"Item acquired: ","color":"yellow","type":"text"},{"text":"Propulsion Suit","color":"aqua","type":"text"}]
tellraw @s [{"text":"Incoming Transmission (Propulsion Suit) - [ Click to Accept ]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger inquognito.transmission set 6"},"type":"text"}]

playsound minecraft:entity.player.levelup master @s

return 1