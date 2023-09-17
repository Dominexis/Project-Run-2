tag @s add inquognito.gun.trinity

scoreboard players add @s inquognito.gun.augments 1

function inquognito:logic/abilities/gun/update

function inquognito:logic/pickups/acquire

tellraw @s [{"text":"Augment acquired: ","color":"yellow"},{"text":"Trinity","color":"yellow"}]
tellraw @s [{"text":"Incoming Transmission (Augment: Trinity) - [ Click to Accept ]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger inquognito.transmission set 10"}}]

playsound minecraft:entity.player.levelup master @s
