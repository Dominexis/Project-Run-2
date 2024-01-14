scoreboard players set @s aj.gate.animation.idle.local_anim_time 0
tag @s remove aj.gate.animation.idle
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.gate.disable_command_keyframes
function animated_java:gate/zzzzzzzz/animations/idle/tree/leaf_0
tag @s remove aj.gate.disable_command_keyframes
return 1