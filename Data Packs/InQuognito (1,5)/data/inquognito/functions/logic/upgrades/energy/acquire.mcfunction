tag @s add inquognito.upgrade.energy

scoreboard players add @s inquognito.energy 20

scoreboard players reset @s inquognito.clearance.energy

tellraw @s [{"text":"Item acquired: ","color":"yellow"},{"text":"Energy Cell","color":"aqua"}]
tellraw @s [{"text":"Incoming Transmission (Energy Cell) - [ Click to Accept ]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger inquognito.transmission set 6"}}]

playsound minecraft:entity.player.levelup master @s
