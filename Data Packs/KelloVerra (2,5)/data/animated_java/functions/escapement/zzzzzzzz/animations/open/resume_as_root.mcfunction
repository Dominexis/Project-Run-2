scoreboard players set @s aj.escapement.animation.open.loop_mode 2
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.escapement.animation.open
return 1