scoreboard players add @s aj.animwheel.animation.minor_ccw.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.animwheel.animation.minor_ccw.local_anim_time
function animated_java:animwheel/zzzzzzzz/animations/minor_ccw/apply_frame_as_root
execute if score @s aj.animwheel.animation.minor_ccw.local_anim_time matches 120.. run function animated_java:animwheel/zzzzzzzz/animations/minor_ccw/end