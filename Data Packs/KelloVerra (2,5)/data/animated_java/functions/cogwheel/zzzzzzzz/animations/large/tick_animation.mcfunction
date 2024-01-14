scoreboard players add @s aj.cogwheel.animation.large.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.cogwheel.animation.large.local_anim_time
function animated_java:cogwheel/zzzzzzzz/animations/large/apply_frame_as_root
execute if score @s aj.cogwheel.animation.large.local_anim_time matches 41.. run function animated_java:cogwheel/zzzzzzzz/animations/large/end
return 1