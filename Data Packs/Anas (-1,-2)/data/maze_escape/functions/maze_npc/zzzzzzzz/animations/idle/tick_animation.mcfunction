scoreboard players add @s aj.maze_npc.animation.idle.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.maze_npc.animation.idle.local_anim_time
function maze_escape:maze_npc/zzzzzzzz/animations/idle/apply_frame_as_root
execute if score @s aj.maze_npc.animation.idle.local_anim_time matches 20.. run function maze_escape:maze_npc/zzzzzzzz/animations/idle/end