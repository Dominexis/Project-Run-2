scoreboard players set @s aj.launchpad.animation.bloom.local_anim_time 0
tag @s remove aj.launchpad.animation.bloom
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.launchpad.disable_command_keyframes
function animated_java:launchpad/zzzzzzzz/animations/bloom/tree/leaf_0
tag @s remove aj.launchpad.disable_command_keyframes
return 1