scoreboard players add @s aj.moving_platform.animation.impact.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.moving_platform.animation.impact.local_anim_time
function animated_java:moving_platform/zzzzzzzz/animations/impact/apply_frame_as_root
execute if score @s aj.moving_platform.animation.impact.local_anim_time matches 6.. run function animated_java:moving_platform/zzzzzzzz/animations/impact/end