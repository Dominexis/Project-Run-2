scoreboard players set @s inquognito.floor -1

function inquognito:logic/plot/boss/restore_player

scoreboard players reset @s inquognito.boss.health
scoreboard players reset @s inquognito.boss.heartbeat

clear @s minecraft:tnt{inquognito.sonic_charge:1}
