scoreboard players set @s aj.animwheel.animation.flip.local_anim_time 0
tag @s remove aj.animwheel.animation.flip
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.animwheel.disable_command_keyframes
function animated_java:animwheel/zzzzzzzz/animations/flip/tree/leaf_0
tag @s remove aj.animwheel.disable_command_keyframes
return 1