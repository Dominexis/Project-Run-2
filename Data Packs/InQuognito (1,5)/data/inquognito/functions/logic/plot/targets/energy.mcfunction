scoreboard players set @s inquognito.clearance.energy 800

tellraw @s[tag=!inquognito.target.energy] [{"text":"Incoming Transmission (Energy Cell Failsafe) - [ Click to Accept ]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger inquognito.transmission set 15"},"type":"text"}]

tag @s add inquognito.target.energy

playsound minecraft:ui.button.click player @s

return 1