execute if score @s aj.animwheel.animation.minor_ccw_f.loop_mode = $aj.loop_mode.loop aj.i run function animated_java:animwheel/zzzzzzzz/animations/minor_ccw_f/end_loop
execute if score @s aj.animwheel.animation.minor_ccw_f.loop_mode = $aj.loop_mode.once aj.i run function animated_java:animwheel/animations/minor_ccw_f/stop
execute if score @s aj.animwheel.animation.minor_ccw_f.loop_mode = $aj.loop_mode.hold aj.i run function animated_java:animwheel/animations/minor_ccw_f/pause
return 1