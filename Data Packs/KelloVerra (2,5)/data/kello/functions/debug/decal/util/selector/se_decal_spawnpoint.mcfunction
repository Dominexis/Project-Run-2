particle minecraft:campfire_signal_smoke ~ ~ ~ 0 0 0 0.00002 2 force
tag @s add kello.decal.spawn_point_selected
tag @s add kello.decal.selected
tellraw @p [{"text":"[AncientApparatus] Selected a decal spawnpoint with the following tags => ","color":"gold","type":"text"},{"nbt":"Tags","entity":"@s","color":"yellow","source":"entity","type":"nbt"}]
return 1