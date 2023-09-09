scoreboard players set @s inquognito.clearance 0
scoreboard players set @s inquognito.clearance.frostbite 0

tellraw @s [{"text":"WARNING: Compound has been breached. Emergency lockdown activated.","color":"red"}]
tellraw @s [{"text":"Incoming Transmission (Mission Briefing) - [ Click to Accept ]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger inquognito.transmission set 1"}}]
