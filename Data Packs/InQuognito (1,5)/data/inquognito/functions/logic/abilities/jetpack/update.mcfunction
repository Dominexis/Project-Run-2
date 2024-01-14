function pr:player/time/compute
data modify storage inquognito:data hud_timer set value '[{"nbt":"tag.minutes","storage":"pr:data","interpret":true},{"text":":","color":"gray"},{"nbt":"tag.seconds","storage":"pr:data","interpret":true},{"text":".","color":"gray"},{"nbt":"tag.milliseconds","storage":"pr:data","interpret":true},{"text":" | ","bold":false,"color":"white"}]'

scoreboard players operation #percentage inquognito.temp = @s inquognito.jetpack.fuel
scoreboard players operation #percentage inquognito.temp *= #100 pr.value
scoreboard players operation #percentage inquognito.temp /= @s inquognito.energy

execute unless score @s inquognito.boss.health matches 2.. run function inquognito:logic/hud/1
execute if score @s[tag=inquognito.boss.energy_cut] inquognito.boss.health matches 2 run function inquognito:logic/hud/2
execute if score @s inquognito.boss.health matches 3.. run function inquognito:logic/hud/3

function help:b12096bcc549af1cebc04efb262a78244f3ba22f444bfb39a9ef29bf3ed12b22

return 1