scoreboard players add @s inquognito.health 2

function inquognito:logic/pickups/acquire

tellraw @s [{"text":"Item acquired: ","color":"yellow","type":"text"},{"text":"Health+ Upgrade","color":"aqua","type":"text"}]
tellraw @s [{"text":"Health: ","color":"yellow","type":"text"},{"text":"+1","color":"aqua","type":"text"}]

playsound minecraft:entity.player.levelup master @s

return 1