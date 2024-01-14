execute if score @s aj.animwheel.animation.minor_ccw.loop_mode = $aj.loop_mode.loop aj.i run function animated_java:animwheel/zzzzzzzz/animations/minor_ccw/end_loop
execute if score @s aj.animwheel.animation.minor_ccw.loop_mode = $aj.loop_mode.once aj.i run function animated_java:animwheel/animations/minor_ccw/stop
execute if score @s aj.animwheel.animation.minor_ccw.loop_mode = $aj.loop_mode.hold aj.i run function animated_java:animwheel/animations/minor_ccw/pause
return 1