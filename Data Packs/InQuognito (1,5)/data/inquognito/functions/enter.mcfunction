function inquognito:logic/reset_player

scoreboard players set @s inquognito.health 10
scoreboard players set @s inquognito.clearance -1
scoreboard players set @s inquognito.clearance.energy 0
scoreboard players set @s inquognito.clearance.frostbite 0
scoreboard players set @s inquognito.floor 0

attribute @s minecraft:generic.max_health base set 10.0
effect give @s minecraft:instant_health 1 50 true

function inquognito:logic/suits/mk1
