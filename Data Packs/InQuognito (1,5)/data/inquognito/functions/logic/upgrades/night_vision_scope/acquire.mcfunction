tag @s add inquognito.nightVisionScope

tellraw @s [{"text":"Item acquired: ","color":"yellow"},{"text":"Night Vision Scope","color":"aqua"}]
tellraw @s [{"text":"Incoming Transmission (Night Vision Scope) [ Click to Accept ]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger inquognito.transmission set 11"}}]

playsound minecraft:entity.player.levelup master @s
