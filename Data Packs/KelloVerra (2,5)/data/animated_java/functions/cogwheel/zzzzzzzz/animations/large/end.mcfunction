execute if score @s aj.cogwheel.animation.large.loop_mode = $aj.loop_mode.loop aj.i run function animated_java:cogwheel/zzzzzzzz/animations/large/end_loop
execute if score @s aj.cogwheel.animation.large.loop_mode = $aj.loop_mode.once aj.i run function animated_java:cogwheel/animations/large/stop
execute if score @s aj.cogwheel.animation.large.loop_mode = $aj.loop_mode.hold aj.i run function animated_java:cogwheel/animations/large/pause