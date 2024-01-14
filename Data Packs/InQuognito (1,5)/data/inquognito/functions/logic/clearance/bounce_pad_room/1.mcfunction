tellraw @s [{"text":"Incoming Transmission (Experiment Z-58 Vault Switches) - [ Click to Accept ]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger inquognito.transmission set 17"},"type":"text"}]

playsound minecraft:entity.experience_orb.pickup master @s

return 1