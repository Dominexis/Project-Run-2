scoreboard players add @s aj.gate.animation.chp_1_open.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.gate.animation.chp_1_open.local_anim_time
function animated_java:gate/zzzzzzzz/animations/chp_1_open/apply_frame_as_root
execute if score @s aj.gate.animation.chp_1_open.local_anim_time matches 20.. run function animated_java:gate/zzzzzzzz/animations/chp_1_open/end
return 1