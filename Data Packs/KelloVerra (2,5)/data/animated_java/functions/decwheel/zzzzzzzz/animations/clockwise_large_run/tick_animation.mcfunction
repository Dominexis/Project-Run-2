scoreboard players add @s aj.decwheel.animation.clockwise_large_run.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.decwheel.animation.clockwise_large_run.local_anim_time
function animated_java:decwheel/zzzzzzzz/animations/clockwise_large_run/apply_frame_as_root
execute if score @s aj.decwheel.animation.clockwise_large_run.local_anim_time matches 20.. run function animated_java:decwheel/zzzzzzzz/animations/clockwise_large_run/end
return 1