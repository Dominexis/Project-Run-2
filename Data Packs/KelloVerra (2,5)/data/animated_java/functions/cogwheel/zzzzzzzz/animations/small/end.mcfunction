execute if score @s aj.cogwheel.animation.small.loop_mode = $aj.loop_mode.loop aj.i run function animated_java:cogwheel/zzzzzzzz/animations/small/end_loop
execute if score @s aj.cogwheel.animation.small.loop_mode = $aj.loop_mode.once aj.i run function animated_java:cogwheel/animations/small/stop
execute if score @s aj.cogwheel.animation.small.loop_mode = $aj.loop_mode.hold aj.i run function animated_java:cogwheel/animations/small/pause
return 1