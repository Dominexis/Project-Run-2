scoreboard players set @s aj.launchpad.animation.shoot.loop_mode 2
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.launchpad.animation.shoot
return 1