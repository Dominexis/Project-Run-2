execute if score @s aj.gate.animation.chp_1_close.loop_mode = $aj.loop_mode.loop aj.i run function animated_java:gate/zzzzzzzz/animations/chp_1_close/end_loop
execute if score @s aj.gate.animation.chp_1_close.loop_mode = $aj.loop_mode.once aj.i run function animated_java:gate/animations/chp_1_close/stop
execute if score @s aj.gate.animation.chp_1_close.loop_mode = $aj.loop_mode.hold aj.i run function animated_java:gate/animations/chp_1_close/pause
return 1