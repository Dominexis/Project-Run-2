scoreboard players add @s aj.animwheel.animation.minor_ccw_f.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.animwheel.animation.minor_ccw_f.local_anim_time
function animated_java:animwheel/zzzzzzzz/animations/minor_ccw_f/apply_frame_as_root
execute if score @s aj.animwheel.animation.minor_ccw_f.local_anim_time matches 60.. run function animated_java:animwheel/zzzzzzzz/animations/minor_ccw_f/end