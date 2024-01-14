execute if score @s aj.animwheel.animation.minor_cw.loop_mode = $aj.loop_mode.loop aj.i run function animated_java:animwheel/zzzzzzzz/animations/minor_cw/end_loop
execute if score @s aj.animwheel.animation.minor_cw.loop_mode = $aj.loop_mode.once aj.i run function animated_java:animwheel/animations/minor_cw/stop
execute if score @s aj.animwheel.animation.minor_cw.loop_mode = $aj.loop_mode.hold aj.i run function animated_java:animwheel/animations/minor_cw/pause
return 1