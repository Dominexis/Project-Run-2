scoreboard players set @s aj.checkpoint_flag.animation.checkpoint.local_anim_time 0
tag @s remove aj.checkpoint_flag.animation.checkpoint
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.checkpoint_flag.disable_command_keyframes
function animated_java:checkpoint_flag/zzzzzzzz/animations/checkpoint/tree/leaf_0
tag @s remove aj.checkpoint_flag.disable_command_keyframes