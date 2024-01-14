scoreboard players set @s inquognito.health 10
attribute @s minecraft:generic.max_health base set 10.0
effect give @s minecraft:instant_health 1 50 true

scoreboard players set @s inquognito.clearance 0
scoreboard players set @s inquognito.clearance.bounce_pad_room 0
scoreboard players set @s inquognito.clearance.energy 0
scoreboard players set @s inquognito.clearance.frostbite 0
scoreboard players set @s inquognito.clearance.office 0
scoreboard players set @s inquognito.clearance.sector_4 0

scoreboard players set @s inquognito.floor 0

scoreboard players set @s inquognito.upgrades 0
scoreboard players set @s inquognito.gun.augments 0

tellraw @s [{"text":"WARNING: Compound has been breached. Emergency lockdown activated.","color":"red","type":"text"}]
tellraw @s [{"text":"Incoming Transmission (Mission Briefing) - [ Click to Accept ]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger inquognito.transmission set 1"},"type":"text"}]

execute positioned ~2 ~ ~ run function pr:player/checkpoint/mark_pos

return 1