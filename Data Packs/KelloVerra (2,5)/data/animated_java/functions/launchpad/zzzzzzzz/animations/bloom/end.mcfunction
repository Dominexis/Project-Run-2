execute if score @s aj.launchpad.animation.bloom.loop_mode = $aj.loop_mode.loop aj.i run function animated_java:launchpad/zzzzzzzz/animations/bloom/end_loop
execute if score @s aj.launchpad.animation.bloom.loop_mode = $aj.loop_mode.once aj.i run function animated_java:launchpad/animations/bloom/stop
execute if score @s aj.launchpad.animation.bloom.loop_mode = $aj.loop_mode.hold aj.i run function animated_java:launchpad/animations/bloom/pause
return 1