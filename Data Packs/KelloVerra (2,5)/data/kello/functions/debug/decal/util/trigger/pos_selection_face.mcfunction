scoreboard players set @s kello.decal.pos_to_selection_facing 0

tag @s add kello.executor
execute as @e[type=#kello:generic/system,tag=pr.target,tag=kello.decal.selected] at @s run tp @s ~ ~ ~ facing entity @p[tag=kello.executor] eyes
tag @s remove kello.executor
tellraw @s {"text":"[AncientApparatus] All selected decals are now facing towards your eyes","color":"gold"}