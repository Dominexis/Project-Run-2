execute if score @s aj.escapement.animation.open.loop_mode = $aj.loop_mode.loop aj.i run function animated_java:escapement/zzzzzzzz/animations/open/end_loop
execute if score @s aj.escapement.animation.open.loop_mode = $aj.loop_mode.once aj.i run function animated_java:escapement/animations/open/stop
execute if score @s aj.escapement.animation.open.loop_mode = $aj.loop_mode.hold aj.i run function animated_java:escapement/animations/open/pause
return 1