execute if score @s aj.checkpoint_flag.animation.flap.loop_mode = $aj.loop_mode.loop aj.i run function animated_java:checkpoint_flag/zzzzzzzz/animations/flap/end_loop
execute if score @s aj.checkpoint_flag.animation.flap.loop_mode = $aj.loop_mode.once aj.i run function animated_java:checkpoint_flag/animations/flap/stop
execute if score @s aj.checkpoint_flag.animation.flap.loop_mode = $aj.loop_mode.hold aj.i run function animated_java:checkpoint_flag/animations/flap/pause
return 1