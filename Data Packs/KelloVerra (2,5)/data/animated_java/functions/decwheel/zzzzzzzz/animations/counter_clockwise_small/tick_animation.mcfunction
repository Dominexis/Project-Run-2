scoreboard players add @s aj.decwheel.animation.counter_clockwise_small.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.decwheel.animation.counter_clockwise_small.local_anim_time
function animated_java:decwheel/zzzzzzzz/animations/counter_clockwise_small/apply_frame_as_root
execute if score @s aj.decwheel.animation.counter_clockwise_small.local_anim_time matches 40.. run function animated_java:decwheel/zzzzzzzz/animations/counter_clockwise_small/end
return 1