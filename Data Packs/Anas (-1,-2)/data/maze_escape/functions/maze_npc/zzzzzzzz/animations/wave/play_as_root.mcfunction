scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.maze_npc.animation.wave.local_anim_time 0
scoreboard players set @s aj.maze_npc.animation.wave.loop_mode 0
execute on passengers run data modify entity @s interpolation_duration set value 0
function maze_escape:maze_npc/zzzzzzzz/animations/wave/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.maze_npc.animation.wave