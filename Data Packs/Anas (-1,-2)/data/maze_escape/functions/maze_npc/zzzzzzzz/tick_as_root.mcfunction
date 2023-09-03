execute unless score @s aj.maze_npc.rig_loaded = @s aj.maze_npc.rig_loaded run function maze_escape:maze_npc/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function maze_escape:maze_npc/zzzzzzzz/animations/tick
function #maze_escape:maze_npc/on_tick/as_root