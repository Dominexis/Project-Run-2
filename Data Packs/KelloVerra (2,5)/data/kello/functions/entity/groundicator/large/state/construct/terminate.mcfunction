execute if entity @s[tag=kello.dead] run function kello:entity/groundicator/large/state/disintegrate/start
execute if score @s kello.entity.lifetime matches 0 run function kello:entity/groundicator/large/state/disintegrate/start
execute unless block ~ ~ ~ minecraft:barrier run function kello:entity/groundicator/large/state/disintegrate/start
return 1