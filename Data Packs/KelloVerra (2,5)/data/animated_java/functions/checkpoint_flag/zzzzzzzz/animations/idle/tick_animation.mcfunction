scoreboard players add @s aj.checkpoint_flag.animation.idle.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.checkpoint_flag.animation.idle.local_anim_time
function animated_java:checkpoint_flag/zzzzzzzz/animations/idle/apply_frame_as_root
execute if score @s aj.checkpoint_flag.animation.idle.local_anim_time matches 1.. run function animated_java:checkpoint_flag/zzzzzzzz/animations/idle/end
return 1