tellraw @s [{"text":"Incoming Transmission (Experiment Z-58 Vault Clearance) - [ Click to Accept ]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger inquognito.transmission set 20"},"type":"text"}]

playsound minecraft:entity.player.levelup master @s

return 1