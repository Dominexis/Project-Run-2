execute if score @s aj.moving_platform.animation.impact.loop_mode = $aj.loop_mode.loop aj.i run function animated_java:moving_platform/zzzzzzzz/animations/impact/end_loop
execute if score @s aj.moving_platform.animation.impact.loop_mode = $aj.loop_mode.once aj.i run function animated_java:moving_platform/animations/impact/stop
execute if score @s aj.moving_platform.animation.impact.loop_mode = $aj.loop_mode.hold aj.i run function animated_java:moving_platform/animations/impact/pause
return 1