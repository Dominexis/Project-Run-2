execute if score @s aj.launchpad.animation.shoot.loop_mode = $aj.loop_mode.loop aj.i run function animated_java:launchpad/zzzzzzzz/animations/shoot/end_loop
execute if score @s aj.launchpad.animation.shoot.loop_mode = $aj.loop_mode.once aj.i run function animated_java:launchpad/animations/shoot/stop
execute if score @s aj.launchpad.animation.shoot.loop_mode = $aj.loop_mode.hold aj.i run function animated_java:launchpad/animations/shoot/pause
return 1