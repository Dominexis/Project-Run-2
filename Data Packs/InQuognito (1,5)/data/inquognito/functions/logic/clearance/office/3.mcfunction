scoreboard players reset @s inquognito.clearance.office.1
scoreboard players reset @s inquognito.clearance.office.2
scoreboard players reset @s inquognito.clearance.office.3

tellraw @s [{"text":"Incoming Transmission (Office Vault Clearance) - [ Click to Accept ]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger inquognito.transmission set 24"}}]

playsound minecraft:entity.player.levelup master @s
