scoreboard players set @s kello.update_rig_pos 0

execute as @e[type=item_display,tag=pr.target,tag=aj.rig_root] at @s run function kello:debug/decal/util/trigger/update_rig_pos/main
tellraw @s {"text":"[AncientApparatus] All rigs has been updated","color":"gold"}