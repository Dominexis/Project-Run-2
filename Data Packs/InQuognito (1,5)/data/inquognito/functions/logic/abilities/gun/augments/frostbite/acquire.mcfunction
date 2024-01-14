tag @s add inquognito.gun.frostbite

scoreboard players add @s inquognito.gun.augments 1

function inquognito:logic/abilities/gun/update

function inquognito:logic/pickups/acquire

tellraw @s [{"text":"Augment acquired: ","color":"yellow","type":"text"},{"text":"Frostbite","color":"aqua","type":"text"}]
tellraw @s [{"text":"Incoming Transmission (Augment: Frostbite) - [ Click to Accept ]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger inquognito.transmission set 8"},"type":"text"}]

playsound minecraft:entity.player.levelup master @s

return 1