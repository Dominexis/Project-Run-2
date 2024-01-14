execute store result entity @s Pos[1] double 0.001 run scoreboard players get #local kello.component.to_y

execute positioned as @s run setblock ~ ~ ~ minecraft:air


kill @s
return 1