scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.escapement.animation.open.local_anim_time 0
scoreboard players set @s aj.escapement.animation.open.loop_mode 2
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:escapement/zzzzzzzz/animations/open/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.escapement.animation.open