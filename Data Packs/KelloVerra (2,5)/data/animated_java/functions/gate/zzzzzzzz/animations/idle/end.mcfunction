execute if score @s aj.gate.animation.idle.loop_mode = $aj.loop_mode.loop aj.i run function animated_java:gate/zzzzzzzz/animations/idle/end_loop
execute if score @s aj.gate.animation.idle.loop_mode = $aj.loop_mode.once aj.i run function animated_java:gate/animations/idle/stop
execute if score @s aj.gate.animation.idle.loop_mode = $aj.loop_mode.hold aj.i run function animated_java:gate/animations/idle/pause
return 1