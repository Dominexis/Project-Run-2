scoreboard players add @s aj.animwheel.animation.flip.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.animwheel.animation.flip.local_anim_time
function animated_java:animwheel/zzzzzzzz/animations/flip/apply_frame_as_root
execute if score @s aj.animwheel.animation.flip.local_anim_time matches 1.. run function animated_java:animwheel/zzzzzzzz/animations/flip/end
return 1