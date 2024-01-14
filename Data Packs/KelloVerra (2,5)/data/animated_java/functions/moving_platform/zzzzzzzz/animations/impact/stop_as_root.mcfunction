scoreboard players set @s aj.moving_platform.animation.impact.local_anim_time 0
tag @s remove aj.moving_platform.animation.impact
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.moving_platform.disable_command_keyframes
function animated_java:moving_platform/zzzzzzzz/animations/impact/tree/leaf_0
tag @s remove aj.moving_platform.disable_command_keyframes
return 1