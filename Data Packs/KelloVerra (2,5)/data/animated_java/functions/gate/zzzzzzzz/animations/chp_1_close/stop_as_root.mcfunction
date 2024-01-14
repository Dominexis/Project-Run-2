scoreboard players set @s aj.gate.animation.chp_1_close.local_anim_time 0
tag @s remove aj.gate.animation.chp_1_close
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.gate.disable_command_keyframes
function animated_java:gate/zzzzzzzz/animations/chp_1_close/tree/leaf_0
tag @s remove aj.gate.disable_command_keyframes
return 1