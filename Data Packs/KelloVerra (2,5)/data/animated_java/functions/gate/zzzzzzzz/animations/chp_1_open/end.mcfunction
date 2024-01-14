execute if score @s aj.gate.animation.chp_1_open.loop_mode = $aj.loop_mode.loop aj.i run function animated_java:gate/zzzzzzzz/animations/chp_1_open/end_loop
execute if score @s aj.gate.animation.chp_1_open.loop_mode = $aj.loop_mode.once aj.i run function animated_java:gate/animations/chp_1_open/stop
execute if score @s aj.gate.animation.chp_1_open.loop_mode = $aj.loop_mode.hold aj.i run function animated_java:gate/animations/chp_1_open/pause
return 1