scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.checkpoint_flag.animation.checkpoint.local_anim_time 0
scoreboard players set @s aj.checkpoint_flag.animation.checkpoint.loop_mode 2
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:checkpoint_flag/zzzzzzzz/animations/checkpoint/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.checkpoint_flag.animation.checkpoint