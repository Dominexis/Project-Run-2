scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.decwheel.animation.counter_clockwise_small_run.local_anim_time 0
scoreboard players set @s aj.decwheel.animation.counter_clockwise_small_run.loop_mode 1
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:decwheel/zzzzzzzz/animations/counter_clockwise_small_run/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.decwheel.animation.counter_clockwise_small_run
return 1