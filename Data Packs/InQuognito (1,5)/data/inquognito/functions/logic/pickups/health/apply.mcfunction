scoreboard players add @s inquognito.health 2

function inquognito:logic/pickups/acquire

tellraw @s [{"text":"Item acquired: ","color":"yellow"},{"text":"Health+ Upgrade","color":"aqua"}]
tellraw @s [{"text":"Health: ","color":"yellow"},{"text":"+1","color":"aqua"}]

playsound minecraft:entity.player.levelup master @s
