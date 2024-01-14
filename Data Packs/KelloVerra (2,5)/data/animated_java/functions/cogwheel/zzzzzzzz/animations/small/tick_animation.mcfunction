scoreboard players add @s aj.cogwheel.animation.small.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.cogwheel.animation.small.local_anim_time
function animated_java:cogwheel/zzzzzzzz/animations/small/apply_frame_as_root
execute if score @s aj.cogwheel.animation.small.local_anim_time matches 25.. run function animated_java:cogwheel/zzzzzzzz/animations/small/end
return 1