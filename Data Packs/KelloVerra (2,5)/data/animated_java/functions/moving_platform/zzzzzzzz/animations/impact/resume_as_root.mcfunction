scoreboard players set @s aj.moving_platform.animation.impact.loop_mode 2
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.moving_platform.animation.impact
return 1