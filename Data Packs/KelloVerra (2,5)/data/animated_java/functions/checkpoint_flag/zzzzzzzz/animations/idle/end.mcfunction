execute if score @s aj.checkpoint_flag.animation.idle.loop_mode = $aj.loop_mode.loop aj.i run function animated_java:checkpoint_flag/zzzzzzzz/animations/idle/end_loop
execute if score @s aj.checkpoint_flag.animation.idle.loop_mode = $aj.loop_mode.once aj.i run function animated_java:checkpoint_flag/animations/idle/stop
execute if score @s aj.checkpoint_flag.animation.idle.loop_mode = $aj.loop_mode.hold aj.i run function animated_java:checkpoint_flag/animations/idle/pause
return 1