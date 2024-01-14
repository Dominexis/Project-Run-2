execute if score @s aj.decwheel.animation.counter_clockwise_small.loop_mode = $aj.loop_mode.loop aj.i run function animated_java:decwheel/zzzzzzzz/animations/counter_clockwise_small/end_loop
execute if score @s aj.decwheel.animation.counter_clockwise_small.loop_mode = $aj.loop_mode.once aj.i run function animated_java:decwheel/animations/counter_clockwise_small/stop
execute if score @s aj.decwheel.animation.counter_clockwise_small.loop_mode = $aj.loop_mode.hold aj.i run function animated_java:decwheel/animations/counter_clockwise_small/pause
return 1