scoreboard players set @s aj.checkpoint_flag.animation.flap.local_anim_time 0
tag @s remove aj.checkpoint_flag.animation.flap
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.checkpoint_flag.disable_command_keyframes
function animated_java:checkpoint_flag/zzzzzzzz/animations/flap/tree/leaf_0
tag @s remove aj.checkpoint_flag.disable_command_keyframes