scoreboard players add @s aj.escapement.animation.close.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.escapement.animation.close.local_anim_time
function animated_java:escapement/zzzzzzzz/animations/close/apply_frame_as_root
execute if score @s aj.escapement.animation.close.local_anim_time matches 10.. run function animated_java:escapement/zzzzzzzz/animations/close/end
return 1