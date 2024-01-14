execute if score @s aj.launchpad.animation.cancel.loop_mode = $aj.loop_mode.loop aj.i run function animated_java:launchpad/zzzzzzzz/animations/cancel/end_loop
execute if score @s aj.launchpad.animation.cancel.loop_mode = $aj.loop_mode.once aj.i run function animated_java:launchpad/animations/cancel/stop
execute if score @s aj.launchpad.animation.cancel.loop_mode = $aj.loop_mode.hold aj.i run function animated_java:launchpad/animations/cancel/pause
return 1