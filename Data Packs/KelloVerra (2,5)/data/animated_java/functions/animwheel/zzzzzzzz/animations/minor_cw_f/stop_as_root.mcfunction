scoreboard players set @s aj.animwheel.animation.minor_cw_f.local_anim_time 0
tag @s remove aj.animwheel.animation.minor_cw_f
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.animwheel.disable_command_keyframes
function animated_java:animwheel/zzzzzzzz/animations/minor_cw_f/tree/leaf_0
tag @s remove aj.animwheel.disable_command_keyframes