tellraw @s [{"text":"Incoming Transmission (Sector Clearance) - [ Click to Accept ]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger inquognito.transmission set 27"},"type":"text"}]

playsound minecraft:entity.player.levelup master @s

return 1