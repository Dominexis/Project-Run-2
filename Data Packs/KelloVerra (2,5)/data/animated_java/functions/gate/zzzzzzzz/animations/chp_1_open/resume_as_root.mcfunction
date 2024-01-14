scoreboard players set @s aj.gate.animation.chp_1_open.loop_mode 2
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.gate.animation.chp_1_open
return 1