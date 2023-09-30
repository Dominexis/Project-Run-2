execute as @a[tag=pr.target] at @s run function flcme:tick_player

execute positioned ~10 ~-3 ~-23 run tag @a[tag=pr.target,distance=..3] add flcme.jumphint
execute positioned ~10 ~-2 ~8 run tag @a[tag=pr.target,distance=..3] remove flcme.jumphint
execute positioned ~-12 ~-2 ~15 run tag @a[tag=pr.target,distance=..3] add flcme.jumphint
execute positioned ~-12 ~0 ~36 run tag @a[tag=pr.target,distance=..3] remove flcme.jumphint
execute positioned ~17 ~-4 ~25 run tag @a[tag=pr.target,distance=..3] add flcme.jumphint
execute positioned ~37 ~-2 ~25 run tag @a[tag=pr.target,distance=..3] remove flcme.jumphint
execute positioned ~26 ~-1 ~6 run tag @a[tag=pr.target,distance=..3] add flcme.jumphint
execute positioned ~26 ~-2 ~-10 run tag @a[tag=pr.target,distance=..3] remove flcme.jumphint