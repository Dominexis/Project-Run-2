scoreboard players set @s aj.maze_npc.animation.idle.local_anim_time 0
tag @s remove aj.maze_npc.animation.idle
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.maze_npc.disable_command_keyframes
function maze_escape:maze_npc/zzzzzzzz/animations/idle/tree/leaf_0
tag @s remove aj.maze_npc.disable_command_keyframes
return 1