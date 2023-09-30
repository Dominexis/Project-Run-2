scoreboard players set @s aj.cogwheel.animation.large_ground.local_anim_time 0
tag @s remove aj.cogwheel.animation.large_ground
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.cogwheel.disable_command_keyframes
function animated_java:cogwheel/zzzzzzzz/animations/large_ground/tree/leaf_0
tag @s remove aj.cogwheel.disable_command_keyframes