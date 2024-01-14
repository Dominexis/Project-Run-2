tellraw @s [{"text":"Incoming Transmission (Purple Sector Switches) - [ Click to Accept ]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger inquognito.transmission set 12"},"type":"text"}]

playsound minecraft:entity.experience_orb.pickup master @s

return 1