execute if score #local kello.entity.timer matches 19 run data merge entity @s {item:{id:"minecraft:leather_helmet",tag:{CustomModelData:351904},Count:1b}}
execute if score #local kello.entity.timer matches 18 run data merge entity @s {item:{id:"minecraft:leather_helmet",tag:{CustomModelData:351903},Count:1b}}
execute if score #local kello.entity.timer matches 17 run tag @s remove kello.entity.meteor_spawner_bloom
return 1