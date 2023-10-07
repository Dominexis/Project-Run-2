scoreboard players add @s aj.gate.animation.idle.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.gate.animation.idle.local_anim_time
function animated_java:gate/zzzzzzzz/animations/idle/apply_frame_as_root
execute if score @s aj.gate.animation.idle.local_anim_time matches 1.. run function animated_java:gate/zzzzzzzz/animations/idle/end