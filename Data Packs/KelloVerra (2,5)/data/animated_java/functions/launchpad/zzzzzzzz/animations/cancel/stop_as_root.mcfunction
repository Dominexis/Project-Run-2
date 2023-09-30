scoreboard players set @s aj.launchpad.animation.cancel.local_anim_time 0
tag @s remove aj.launchpad.animation.cancel
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.launchpad.disable_command_keyframes
function animated_java:launchpad/zzzzzzzz/animations/cancel/tree/leaf_0
tag @s remove aj.launchpad.disable_command_keyframes