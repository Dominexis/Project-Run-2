scoreboard players add @s aj.cogwheel.animation.small_ground.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.cogwheel.animation.small_ground.local_anim_time
function animated_java:cogwheel/zzzzzzzz/animations/small_ground/apply_frame_as_root
execute if score @s aj.cogwheel.animation.small_ground.local_anim_time matches 60.. run function animated_java:cogwheel/zzzzzzzz/animations/small_ground/end
return 1