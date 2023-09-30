scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.launchpad.animation.bud.local_anim_time 0
scoreboard players set @s aj.launchpad.animation.bud.loop_mode 1
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:launchpad/zzzzzzzz/animations/bud/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.launchpad.animation.bud