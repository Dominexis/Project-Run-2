function animated_java:gate/zzzzzzzz/animations/chp_1_close/resume_as_root
function animated_java:gate/zzzzzzzz/animations/chp_1_close/tween_as_root
function animated_java:gate/zzzzzzzz/animations/chp_1_close/apply_frame_as_root
execute if score #tween_duration aj.i matches ..0 on passengers run data modify entity @s interpolation_duration set value 1
scoreboard players reset #tween_duration aj.i