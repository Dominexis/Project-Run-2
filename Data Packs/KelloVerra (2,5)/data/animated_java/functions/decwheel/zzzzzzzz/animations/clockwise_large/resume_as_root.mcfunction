scoreboard players set @s aj.decwheel.animation.clockwise_large.loop_mode 0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.decwheel.animation.clockwise_large
return 1