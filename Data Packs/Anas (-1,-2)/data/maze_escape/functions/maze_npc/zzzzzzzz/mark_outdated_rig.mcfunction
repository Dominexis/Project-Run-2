scoreboard players operation @s aj.maze_npc.export_version = aj.maze_npc.export_version aj.i
data modify entity @s Glowing set value 1
data modify entity @s glow_color_override set value 16711680
execute on passengers run data modify entity @s Glowing set value 1
execute on passengers run data modify entity @s glow_color_override set value 16711680
