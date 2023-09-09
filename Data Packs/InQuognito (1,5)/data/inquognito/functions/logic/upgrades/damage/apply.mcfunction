scoreboard players add @s inquognito.gun.damage 2

function inquognito:logic/abilities/gun/update

tellraw @s [{"text":"Item acquired: ","color":"yellow"},{"text":"Damage+ Upgrade","color":"aqua"}]
tellraw @s [{"text":"Damage: ","color":"yellow"},{"text":"+2","color":"aqua"}]

function inquognito:logic/upgrades/acquire

playsound minecraft:entity.player.levelup master @s
