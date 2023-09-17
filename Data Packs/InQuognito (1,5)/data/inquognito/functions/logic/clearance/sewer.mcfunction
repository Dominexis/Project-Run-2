tag @s add inquognito.clearance.sewer

tellraw @s [{"text":"Incoming Transmission (Sewer Clearance Gained) - [ Click to Accept ]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger inquognito.transmission set 21"}}]

playsound minecraft:entity.player.levelup master @s
