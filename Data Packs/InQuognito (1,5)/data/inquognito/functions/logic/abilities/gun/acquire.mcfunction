tag @s add inquognito.gun

scoreboard players add @s inquognito.gun.damage 4
scoreboard players add @s inquognito.gun.fireRate 15

loot give @s loot inquognito:gun
function inquognito:logic/abilities/gun/update

scoreboard players set @s inquognito.clearance 2

function inquognito:logic/pickups/acquire

tellraw @s [{"text":"Item acquired: ","color":"yellow"},{"text":"Varia Beam","color":"gold"}]
tellraw @s [{"text":"Incoming Transmission (Varia Beam) - [ Click to Accept ]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger inquognito.transmission set 5"}}]

playsound minecraft:entity.player.levelup master @s
