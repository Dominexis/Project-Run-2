scoreboard players remove @s inquognito.gun.fireRate 2

function inquognito:logic/abilities/gun/update

function inquognito:logic/pickups/acquire

tellraw @s [{"text":"Item acquired: ","color":"yellow"},{"text":"Fire Rate+ Upgrade","color":"aqua"}]
tellraw @s [{"text":"Fire Rate: ","color":"yellow"},{"text":"+2","color":"aqua"}]

playsound minecraft:entity.player.levelup master @s
