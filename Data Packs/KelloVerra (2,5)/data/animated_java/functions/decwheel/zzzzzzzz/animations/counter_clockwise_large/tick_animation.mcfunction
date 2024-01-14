scoreboard players add @s aj.decwheel.animation.counter_clockwise_large.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.decwheel.animation.counter_clockwise_large.local_anim_time
function animated_java:decwheel/zzzzzzzz/animations/counter_clockwise_large/apply_frame_as_root
execute if score @s aj.decwheel.animation.counter_clockwise_large.local_anim_time matches 80.. run function animated_java:decwheel/zzzzzzzz/animations/counter_clockwise_large/end
return 1