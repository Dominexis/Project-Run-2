scoreboard players set @s aj.maze_npc.rig_loaded 1
execute unless score @s aj.maze_npc.export_version = aj.maze_npc.export_version aj.i at @s run function maze_escape:maze_npc/zzzzzzzz/mark_outdated_rig
return 1