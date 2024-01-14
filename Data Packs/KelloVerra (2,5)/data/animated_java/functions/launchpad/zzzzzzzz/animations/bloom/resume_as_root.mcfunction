scoreboard players set @s aj.launchpad.animation.bloom.loop_mode 2
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.launchpad.animation.bloom
return 1