tellraw @s [{"text":"Incoming Transmission (Purple Sector Clearance) - [ Click to Accept ]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger inquognito.transmission set 14"},"type":"text"}]

playsound minecraft:entity.player.levelup master @s

return 1