scoreboard players add @s aj.maze_npc.animation.wave.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.maze_npc.animation.wave.local_anim_time
function maze_escape:maze_npc/zzzzzzzz/animations/wave/apply_frame_as_root
execute if score @s aj.maze_npc.animation.wave.local_anim_time matches 55.. run function maze_escape:maze_npc/zzzzzzzz/animations/wave/end