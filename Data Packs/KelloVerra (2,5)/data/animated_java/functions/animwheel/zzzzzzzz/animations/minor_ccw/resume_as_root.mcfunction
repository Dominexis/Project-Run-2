scoreboard players set @s aj.animwheel.animation.minor_ccw.loop_mode 0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.animwheel.animation.minor_ccw
return 1