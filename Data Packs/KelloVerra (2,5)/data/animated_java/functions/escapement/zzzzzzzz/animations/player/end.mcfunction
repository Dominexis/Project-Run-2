execute if score @s aj.escapement.animation.player.loop_mode = $aj.loop_mode.loop aj.i run function animated_java:escapement/zzzzzzzz/animations/player/end_loop
execute if score @s aj.escapement.animation.player.loop_mode = $aj.loop_mode.once aj.i run function animated_java:escapement/animations/player/stop
execute if score @s aj.escapement.animation.player.loop_mode = $aj.loop_mode.hold aj.i run function animated_java:escapement/animations/player/pause
return 1