scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.decwheel.animation.clockwise_small.local_anim_time 0
scoreboard players set @s aj.decwheel.animation.clockwise_small.loop_mode 0
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:decwheel/zzzzzzzz/animations/clockwise_small/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.decwheel.animation.clockwise_small
return 1