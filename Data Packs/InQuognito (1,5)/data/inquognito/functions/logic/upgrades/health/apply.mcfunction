scoreboard players add @s inquognito.health 2

attribute @s[scores={inquognito.health=12}] minecraft:generic.max_health base set 12.0
attribute @s[scores={inquognito.health=14}] minecraft:generic.max_health base set 14.0
attribute @s[scores={inquognito.health=16}] minecraft:generic.max_health base set 16.0
attribute @s[scores={inquognito.health=18}] minecraft:generic.max_health base set 18.0
attribute @s[scores={inquognito.health=20}] minecraft:generic.max_health base set 20.0

tellraw @s [{"text":"Item acquired: ","color":"yellow"},{"text":"Health+ Upgrade","color":"aqua"}]
tellraw @s [{"text":"Health: ","color":"yellow"},{"text":"+2","color":"aqua"}]

playsound minecraft:entity.player.levelup master @s
