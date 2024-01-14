scoreboard players add @s aj.decwheel.animation.clockwise_small_inv.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.decwheel.animation.clockwise_small_inv.local_anim_time
function animated_java:decwheel/zzzzzzzz/animations/clockwise_small_inv/apply_frame_as_root
execute if score @s aj.decwheel.animation.clockwise_small_inv.local_anim_time matches 20.. run function animated_java:decwheel/zzzzzzzz/animations/clockwise_small_inv/end
return 1