execute if score @s aj.maze_npc.animation.talk.loop_mode = $aj.loop_mode.loop aj.i run function maze_escape:maze_npc/zzzzzzzz/animations/talk/end_loop
execute if score @s aj.maze_npc.animation.talk.loop_mode = $aj.loop_mode.once aj.i run function maze_escape:maze_npc/animations/talk/stop
execute if score @s aj.maze_npc.animation.talk.loop_mode = $aj.loop_mode.hold aj.i run function maze_escape:maze_npc/animations/talk/pause
return 1