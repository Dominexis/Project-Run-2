scoreboard players set @s aj.escapement.animation.close.local_anim_time 0
tag @s remove aj.escapement.animation.close
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.escapement.disable_command_keyframes
function animated_java:escapement/zzzzzzzz/animations/close/tree/leaf_0
tag @s remove aj.escapement.disable_command_keyframes
return 1