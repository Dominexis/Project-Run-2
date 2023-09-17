scoreboard players set @s inquognito.clearance 1

tellraw @s [{"text":"Incoming Transmission (Security Clearance Gained) - [ Click to Accept ]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger inquognito.transmission set 4"}}]

playsound minecraft:entity.player.levelup master @s
