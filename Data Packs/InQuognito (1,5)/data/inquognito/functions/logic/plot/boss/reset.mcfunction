tag @s remove inquognito.boss.start

tag @s remove inquognito.boss.darkness
tag @s remove inquognito.boss.darkness_particles

execute if score @s inquognito.boss.health matches ..3 run scoreboard players add @s inquognito.health 2
execute if score @s inquognito.boss.health matches ..2 run scoreboard players add @s inquognito.health 2
execute if score @s inquognito.boss.health matches ..2 run scoreboard players operation @s inquognito.energy *= #2 pr.value

scoreboard players reset @s inquognito.boss.health
scoreboard players reset @s inquognito.boss.heartbeat
