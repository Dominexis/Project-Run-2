tag @s add pr.pause_timer
tag @s add inquognito.win

gamemode spectator
effect give @s minecraft:blindness infinite 0 true

function inquognito:logic/plot/boss/dialogue/reset
execute unless score @s inquognito.upgrades >= max_upgrades inquognito.values run scoreboard players set @s inquognito.dialogue 90
execute if score @s inquognito.upgrades >= max_upgrades inquognito.values run scoreboard players set @s inquognito.dialogue 99
