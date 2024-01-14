scoreboard objectives remove frostcobra.fallDistance
scoreboard objectives remove frostcobra.constants
scoreboard objectives remove frostcobra.portals
scoreboard objectives remove frostcobra.tp
scoreboard objectives remove frostcobra.tp2
scoreboard objectives remove frostcobra.cpId
scoreboard objectives remove frostcobra.lastCp
scoreboard objectives remove frostcobra.lastCp2
scoreboard objectives remove frostcobra.lastCp2
scoreboard objectives remove frostcobra.tpScore
scoreboard objectives remove frostcobra.count

kill @e[tag=frostcobra.text]

kill @e[tag=frostcobra.portalIn]
kill @e[tag=frostcobra.portalOut]
kill @e[tag=frostcobra.checkpoint]
kill @e[tag=frostcobra.finish]

forceload remove ~-40 ~-40 ~40 ~40

return 1