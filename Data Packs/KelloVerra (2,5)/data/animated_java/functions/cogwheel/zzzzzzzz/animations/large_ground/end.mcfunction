execute if score @s aj.cogwheel.animation.large_ground.loop_mode = $aj.loop_mode.loop aj.i run function animated_java:cogwheel/zzzzzzzz/animations/large_ground/end_loop
execute if score @s aj.cogwheel.animation.large_ground.loop_mode = $aj.loop_mode.once aj.i run function animated_java:cogwheel/animations/large_ground/stop
execute if score @s aj.cogwheel.animation.large_ground.loop_mode = $aj.loop_mode.hold aj.i run function animated_java:cogwheel/animations/large_ground/pause
return 1