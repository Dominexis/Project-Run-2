execute if score @s aj.maze_npc.animation.idle.loop_mode = $aj.loop_mode.loop aj.i run function maze_escape:maze_npc/zzzzzzzz/animations/idle/end_loop
execute if score @s aj.maze_npc.animation.idle.loop_mode = $aj.loop_mode.once aj.i run function maze_escape:maze_npc/animations/idle/stop
execute if score @s aj.maze_npc.animation.idle.loop_mode = $aj.loop_mode.hold aj.i run function maze_escape:maze_npc/animations/idle/pause
return 1