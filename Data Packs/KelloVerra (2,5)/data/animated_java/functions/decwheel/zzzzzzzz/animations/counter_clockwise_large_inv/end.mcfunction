execute if score @s aj.decwheel.animation.counter_clockwise_large_inv.loop_mode = $aj.loop_mode.loop aj.i run function animated_java:decwheel/zzzzzzzz/animations/counter_clockwise_large_inv/end_loop
execute if score @s aj.decwheel.animation.counter_clockwise_large_inv.loop_mode = $aj.loop_mode.once aj.i run function animated_java:decwheel/animations/counter_clockwise_large_inv/stop
execute if score @s aj.decwheel.animation.counter_clockwise_large_inv.loop_mode = $aj.loop_mode.hold aj.i run function animated_java:decwheel/animations/counter_clockwise_large_inv/pause
return 1