scoreboard players set @s aj.cogwheel.animation.small.loop_mode 0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.cogwheel.animation.small
return 1