execute if score @s aj.escapement.animation.close.loop_mode = $aj.loop_mode.loop aj.i run function animated_java:escapement/zzzzzzzz/animations/close/end_loop
execute if score @s aj.escapement.animation.close.loop_mode = $aj.loop_mode.once aj.i run function animated_java:escapement/animations/close/stop
execute if score @s aj.escapement.animation.close.loop_mode = $aj.loop_mode.hold aj.i run function animated_java:escapement/animations/close/pause
return 1