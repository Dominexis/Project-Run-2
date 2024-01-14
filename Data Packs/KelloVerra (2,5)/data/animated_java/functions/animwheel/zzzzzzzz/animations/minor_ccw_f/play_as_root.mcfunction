scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.animwheel.animation.minor_ccw_f.local_anim_time 0
scoreboard players set @s aj.animwheel.animation.minor_ccw_f.loop_mode 0
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:animwheel/zzzzzzzz/animations/minor_ccw_f/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.animwheel.animation.minor_ccw_f
return 1