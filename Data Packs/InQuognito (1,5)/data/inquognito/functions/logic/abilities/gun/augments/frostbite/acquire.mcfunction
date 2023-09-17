tag @s add inquognito.gun.frostbite

scoreboard players add @s inquognito.gun.augments 1

function inquognito:logic/abilities/gun/update

function inquognito:logic/pickups/acquire

tellraw @s [{"text":"Augment acquired: ","color":"yellow"},{"text":"Frostbite","color":"aqua"}]
tellraw @s [{"text":"Incoming Transmission (Augment: Frostbite) - [ Click to Accept ]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger inquognito.transmission set 8"}}]

playsound minecraft:entity.player.levelup master @s
