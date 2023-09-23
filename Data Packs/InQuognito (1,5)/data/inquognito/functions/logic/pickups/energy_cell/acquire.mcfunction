advancement grant @s only inquognito:plot/pickups/energy_cell

scoreboard players operation @s inquognito.energy += energy inquognito.values

scoreboard players reset @s inquognito.clearance.energy

function inquognito:logic/pickups/acquire

tellraw @s [{"text":"Item acquired: ","color":"yellow"},{"text":"Energy Cell","color":"aqua"}]
tellraw @s [{"text":"Incoming Transmission (Energy Cell) - [ Click to Accept ]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger inquognito.transmission set 16"}}]

playsound minecraft:entity.player.levelup master @s
