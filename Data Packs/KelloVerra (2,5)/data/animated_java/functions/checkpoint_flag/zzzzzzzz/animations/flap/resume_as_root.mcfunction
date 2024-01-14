scoreboard players set @s aj.checkpoint_flag.animation.flap.loop_mode 0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.checkpoint_flag.animation.flap
return 1