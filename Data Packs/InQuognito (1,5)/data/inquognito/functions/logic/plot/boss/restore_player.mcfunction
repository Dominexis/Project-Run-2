tag @s remove inquognito.boss.energy_cut
tag @s remove inquognito.boss.darkness
tag @s remove inquognito.boss.darkness_particles

tag @s remove inquognito.escaping

execute if score @s inquognito.boss.health matches ..3 run scoreboard players add @s inquognito.health 2
execute if score @s inquognito.boss.health matches ..2 run scoreboard players add @s inquognito.health 2
execute if score @s inquognito.boss.health matches ..2 run scoreboard players operation @s inquognito.energy *= #2 pr.value

return 1