scoreboard players set @s aj.cogwheel.animation.small.local_anim_time 0
tag @s remove aj.cogwheel.animation.small
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.cogwheel.disable_command_keyframes
function animated_java:cogwheel/zzzzzzzz/animations/small/tree/leaf_0
tag @s remove aj.cogwheel.disable_command_keyframes