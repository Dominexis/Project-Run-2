execute if score @s aj.decwheel.animation.clockwise_large_trn.loop_mode = $aj.loop_mode.loop aj.i run function animated_java:decwheel/zzzzzzzz/animations/clockwise_large_trn/end_loop
execute if score @s aj.decwheel.animation.clockwise_large_trn.loop_mode = $aj.loop_mode.once aj.i run function animated_java:decwheel/animations/clockwise_large_trn/stop
execute if score @s aj.decwheel.animation.clockwise_large_trn.loop_mode = $aj.loop_mode.hold aj.i run function animated_java:decwheel/animations/clockwise_large_trn/pause
return 1