execute if score @s aj.checkpoint_flag.animation.checkpoint.loop_mode = $aj.loop_mode.loop aj.i run function animated_java:checkpoint_flag/zzzzzzzz/animations/checkpoint/end_loop
execute if score @s aj.checkpoint_flag.animation.checkpoint.loop_mode = $aj.loop_mode.once aj.i run function animated_java:checkpoint_flag/animations/checkpoint/stop
execute if score @s aj.checkpoint_flag.animation.checkpoint.loop_mode = $aj.loop_mode.hold aj.i run function animated_java:checkpoint_flag/animations/checkpoint/pause
return 1