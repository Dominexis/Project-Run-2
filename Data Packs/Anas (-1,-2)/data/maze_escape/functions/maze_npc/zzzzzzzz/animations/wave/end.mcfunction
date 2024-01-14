execute if score @s aj.maze_npc.animation.wave.loop_mode = $aj.loop_mode.loop aj.i run function maze_escape:maze_npc/zzzzzzzz/animations/wave/end_loop
execute if score @s aj.maze_npc.animation.wave.loop_mode = $aj.loop_mode.once aj.i run function maze_escape:maze_npc/animations/wave/stop
execute if score @s aj.maze_npc.animation.wave.loop_mode = $aj.loop_mode.hold aj.i run function maze_escape:maze_npc/animations/wave/pause
return 1