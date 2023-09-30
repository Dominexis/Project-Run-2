scoreboard players add @s aj.checkpoint_flag.animation.curl.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.checkpoint_flag.animation.curl.local_anim_time
function animated_java:checkpoint_flag/zzzzzzzz/animations/curl/apply_frame_as_root
execute if score @s aj.checkpoint_flag.animation.curl.local_anim_time matches 36.. run function animated_java:checkpoint_flag/zzzzzzzz/animations/curl/end