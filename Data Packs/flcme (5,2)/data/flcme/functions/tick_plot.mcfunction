execute as @a[tag=pr.target] at @s run function flcme:tick_player

execute positioned ~10 ~-3 ~-23 run tag @a[tag=pr.target,tag=!flcme.jumphint,distance=..4] add flcme.jumphint