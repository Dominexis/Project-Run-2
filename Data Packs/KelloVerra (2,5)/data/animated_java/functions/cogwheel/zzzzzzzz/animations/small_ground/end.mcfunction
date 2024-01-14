execute if score @s aj.cogwheel.animation.small_ground.loop_mode = $aj.loop_mode.loop aj.i run function animated_java:cogwheel/zzzzzzzz/animations/small_ground/end_loop
execute if score @s aj.cogwheel.animation.small_ground.loop_mode = $aj.loop_mode.once aj.i run function animated_java:cogwheel/animations/small_ground/stop
execute if score @s aj.cogwheel.animation.small_ground.loop_mode = $aj.loop_mode.hold aj.i run function animated_java:cogwheel/animations/small_ground/pause
return 1