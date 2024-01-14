execute if score @s aj.dangling_platform.animation.impact.loop_mode = $aj.loop_mode.loop aj.i run function animated_java:dangling_platform/zzzzzzzz/animations/impact/end_loop
execute if score @s aj.dangling_platform.animation.impact.loop_mode = $aj.loop_mode.once aj.i run function animated_java:dangling_platform/animations/impact/stop
execute if score @s aj.dangling_platform.animation.impact.loop_mode = $aj.loop_mode.hold aj.i run function animated_java:dangling_platform/animations/impact/pause
return 1