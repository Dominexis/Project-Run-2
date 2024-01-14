

execute store result score spawnY zombie_rngV run data get entity @s Pos[1] 1000
spreadplayers ~ ~ 1 30 false @s
execute store result entity @s Pos[1] double 0.001 run scoreboard players get spawnY zombie_rngV
return 1