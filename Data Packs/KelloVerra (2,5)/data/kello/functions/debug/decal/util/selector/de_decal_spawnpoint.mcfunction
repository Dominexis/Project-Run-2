particle minecraft:campfire_signal_smoke ~ ~ ~ 0 0 0 0.00002 2 force
tag @s remove kello.decal.spawn_point_selected
tag @s remove kello.decal.selected
tellraw @p {"text":"[AncientApparatus] Deselected a decal spawnpoint","color":"gold","type":"text"}
return 1