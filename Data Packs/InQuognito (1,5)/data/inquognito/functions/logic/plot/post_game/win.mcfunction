tag @s add pr.pause_timer
tag @s add inquognito.win

execute unless score @s inquognito.upgrades >= max_upgrades inquognito.values run scoreboard players set @s inquognito.dialogue 90
execute if score @s inquognito.upgrades >= max_upgrades inquognito.values run scoreboard players set @s inquognito.dialogue 99
