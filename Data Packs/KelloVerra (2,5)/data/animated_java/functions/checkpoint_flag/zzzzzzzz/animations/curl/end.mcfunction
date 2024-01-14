execute if score @s aj.checkpoint_flag.animation.curl.loop_mode = $aj.loop_mode.loop aj.i run function animated_java:checkpoint_flag/zzzzzzzz/animations/curl/end_loop
execute if score @s aj.checkpoint_flag.animation.curl.loop_mode = $aj.loop_mode.once aj.i run function animated_java:checkpoint_flag/animations/curl/stop
execute if score @s aj.checkpoint_flag.animation.curl.loop_mode = $aj.loop_mode.hold aj.i run function animated_java:checkpoint_flag/animations/curl/pause
return 1