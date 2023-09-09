scoreboard players set @s inquognito.clearance.energy 800

tellraw @s[advancements={inquognito:energy_clearance=false}] [{"text":"Incoming Transmission (Energy Cell Failsafe) - [ Click to Accept ]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger inquognito.transmission set 15"}}]

advancement grant @s only inquognito:energy_clearance

playsound minecraft:ui.button.click player @s
