scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.cogwheel.animation.small_ground.local_anim_time 0
scoreboard players set @s aj.cogwheel.animation.small_ground.loop_mode 0
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:cogwheel/zzzzzzzz/animations/small_ground/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.cogwheel.animation.small_ground
return 1