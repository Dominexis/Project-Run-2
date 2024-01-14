scoreboard players set @s aj.maze_npc.animation.wave.loop_mode 0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.maze_npc.animation.wave
return 1