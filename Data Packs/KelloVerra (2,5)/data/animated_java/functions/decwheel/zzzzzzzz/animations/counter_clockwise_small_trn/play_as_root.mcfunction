scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.decwheel.animation.counter_clockwise_small_trn.local_anim_time 0
scoreboard players set @s aj.decwheel.animation.counter_clockwise_small_trn.loop_mode 0
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:decwheel/zzzzzzzz/animations/counter_clockwise_small_trn/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.decwheel.animation.counter_clockwise_small_trn
return 1