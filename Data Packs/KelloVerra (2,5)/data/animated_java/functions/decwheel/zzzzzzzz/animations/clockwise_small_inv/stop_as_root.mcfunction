scoreboard players set @s aj.decwheel.animation.clockwise_small_inv.local_anim_time 0
tag @s remove aj.decwheel.animation.clockwise_small_inv
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.decwheel.disable_command_keyframes
function animated_java:decwheel/zzzzzzzz/animations/clockwise_small_inv/tree/leaf_0
tag @s remove aj.decwheel.disable_command_keyframes