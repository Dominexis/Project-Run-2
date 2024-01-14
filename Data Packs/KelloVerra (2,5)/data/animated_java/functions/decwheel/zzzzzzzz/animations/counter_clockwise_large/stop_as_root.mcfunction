scoreboard players set @s aj.decwheel.animation.counter_clockwise_large.local_anim_time 0
tag @s remove aj.decwheel.animation.counter_clockwise_large
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.decwheel.disable_command_keyframes
function animated_java:decwheel/zzzzzzzz/animations/counter_clockwise_large/tree/leaf_0
tag @s remove aj.decwheel.disable_command_keyframes
return 1