function pr:player/time/compute
data modify storage inquognito:data hud_timer set value '[{"nbt":"tag.minutes","storage":"pr:data","interpret":true},{"text":":","color":"gray"},{"nbt":"tag.seconds","storage":"pr:data","interpret":true},{"text":".","color":"gray"},{"nbt":"tag.milliseconds","storage":"pr:data","interpret":true},{"text":" | ","bold":false,"color":"white"}]'

scoreboard players operation #percentage inquognito.temp = @s inquognito.jetpack.fuel
scoreboard players operation #percentage inquognito.temp *= #100 pr.value
scoreboard players operation #percentage inquognito.temp /= @s inquognito.energy

execute unless score @s inquognito.boss.health matches 2.. run function inquognito:logic/hud/1
execute if score @s[tag=inquognito.boss.energy_cut] inquognito.boss.health matches 2 run function inquognito:logic/hud/2
execute if score @s inquognito.boss.health matches 3.. run function inquognito:logic/hud/3

title @s actionbar [{"nbt":"hud_timer","storage":"inquognito:data","interpret":true},{"nbt":"hud_energy_label","storage":"inquognito:data","interpret":true},{"nbt":"hud_energy_value","storage":"inquognito:data","interpret":true},{"nbt":"hud_energy_blockage","storage":"inquognito:data","interpret":true}]
