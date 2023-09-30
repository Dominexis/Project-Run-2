scoreboard players set @s kello.decal.gimbal_to_selection_facing 0

execute at @s as @e[type=#kello:generic/system,tag=pr.target,tag=kello.decal.selected] positioned as @s run tp @s ~ ~ ~ ~ ~
tellraw @s {"text":"[AncientApparatus] Your gimbal rotation has been copied to all selected decals","color":"gold"}