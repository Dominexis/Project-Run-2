function animated_java:escapement/zzzzzzzz/animations/player/resume_as_root
function animated_java:escapement/zzzzzzzz/animations/player/tween_as_root
function animated_java:escapement/zzzzzzzz/animations/player/apply_frame_as_root
execute if score #tween_duration aj.i matches ..0 on passengers run data modify entity @s interpolation_duration set value 1
scoreboard players reset #tween_duration aj.i
return 1