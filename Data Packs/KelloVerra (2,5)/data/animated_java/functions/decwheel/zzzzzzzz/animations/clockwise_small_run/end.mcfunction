execute if score @s aj.decwheel.animation.clockwise_small_run.loop_mode = $aj.loop_mode.loop aj.i run function animated_java:decwheel/zzzzzzzz/animations/clockwise_small_run/end_loop
execute if score @s aj.decwheel.animation.clockwise_small_run.loop_mode = $aj.loop_mode.once aj.i run function animated_java:decwheel/animations/clockwise_small_run/stop
execute if score @s aj.decwheel.animation.clockwise_small_run.loop_mode = $aj.loop_mode.hold aj.i run function animated_java:decwheel/animations/clockwise_small_run/pause
return 1