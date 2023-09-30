scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.gate.animation.chp_1_close.local_anim_time 0
scoreboard players set @s aj.gate.animation.chp_1_close.loop_mode 2
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:gate/zzzzzzzz/animations/chp_1_close/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.gate.animation.chp_1_close