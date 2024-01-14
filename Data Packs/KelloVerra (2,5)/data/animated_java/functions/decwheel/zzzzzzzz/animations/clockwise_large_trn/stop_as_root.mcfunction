scoreboard players set @s aj.decwheel.animation.clockwise_large_trn.local_anim_time 0
tag @s remove aj.decwheel.animation.clockwise_large_trn
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.decwheel.disable_command_keyframes
function animated_java:decwheel/zzzzzzzz/animations/clockwise_large_trn/tree/leaf_0
tag @s remove aj.decwheel.disable_command_keyframes
return 1