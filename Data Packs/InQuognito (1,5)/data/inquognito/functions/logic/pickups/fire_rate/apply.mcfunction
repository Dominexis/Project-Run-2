scoreboard players remove @s inquognito.gun.fireRate 2

function inquognito:logic/abilities/gun/update

function inquognito:logic/pickups/acquire

tellraw @s [{"text":"Item acquired: ","color":"yellow","type":"text"},{"text":"Fire Rate+ Upgrade","color":"aqua","type":"text"}]
tellraw @s [{"text":"Fire Rate: ","color":"yellow","type":"text"},{"text":"+2","color":"aqua","type":"text"}]

playsound minecraft:entity.player.levelup master @s

return 1