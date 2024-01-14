execute if score @s aj.animwheel.animation.flip.loop_mode = $aj.loop_mode.loop aj.i run function animated_java:animwheel/zzzzzzzz/animations/flip/end_loop
execute if score @s aj.animwheel.animation.flip.loop_mode = $aj.loop_mode.once aj.i run function animated_java:animwheel/animations/flip/stop
execute if score @s aj.animwheel.animation.flip.loop_mode = $aj.loop_mode.hold aj.i run function animated_java:animwheel/animations/flip/pause
return 1