execute if score @s aj.launchpad.animation.bud.loop_mode = $aj.loop_mode.loop aj.i run function animated_java:launchpad/zzzzzzzz/animations/bud/end_loop
execute if score @s aj.launchpad.animation.bud.loop_mode = $aj.loop_mode.once aj.i run function animated_java:launchpad/animations/bud/stop
execute if score @s aj.launchpad.animation.bud.loop_mode = $aj.loop_mode.hold aj.i run function animated_java:launchpad/animations/bud/pause
return 1