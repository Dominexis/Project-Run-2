tp @s ~ ~ ~
execute store result entity @s Pos[1] double 0.1 run scoreboard players get #void_y kello.value

execute positioned as @s run particle minecraft:white_ash ~ ~.25 ~ 3 0.1 3 0.001 75 force @p[tag=kello.player.void_target]
execute if score #extra_particle kello.value matches 1 positioned as @s run particle minecraft:white_ash ~ ~.25 ~ 3 0.1 3 0.001 225 force @p[tag=kello.player.void_target]
return 1