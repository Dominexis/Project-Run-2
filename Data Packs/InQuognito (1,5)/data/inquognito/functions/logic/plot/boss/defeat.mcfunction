function inquognito:logic/plot/boss/dialogue/reset

scoreboard players reset @s inquognito.boss.health

tag @s remove inquognito.boss.darkness
tag @s remove inquognito.boss.darkness_particles

tag @s add pr.pause_timer
tag @s add inquognito.win

execute unless score @s inquognito.upgrades >= max_upgrades inquognito.values run scoreboard players set @s inquognito.dialogue 90
execute if score @s inquognito.upgrades >= max_upgrades inquognito.values run scoreboard players set @s inquognito.dialogue 99
