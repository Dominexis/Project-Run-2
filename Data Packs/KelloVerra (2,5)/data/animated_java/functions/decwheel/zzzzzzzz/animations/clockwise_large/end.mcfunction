execute if score @s aj.decwheel.animation.clockwise_large.loop_mode = $aj.loop_mode.loop aj.i run function animated_java:decwheel/zzzzzzzz/animations/clockwise_large/end_loop
execute if score @s aj.decwheel.animation.clockwise_large.loop_mode = $aj.loop_mode.once aj.i run function animated_java:decwheel/animations/clockwise_large/stop
execute if score @s aj.decwheel.animation.clockwise_large.loop_mode = $aj.loop_mode.hold aj.i run function animated_java:decwheel/animations/clockwise_large/pause
return 1