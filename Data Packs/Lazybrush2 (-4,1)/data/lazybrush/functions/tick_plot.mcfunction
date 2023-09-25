effect give @a[tag=pr.target,tag=lazy.invisibility] invisibility infinite 0 true
execute positioned ~-3 ~-6 ~-37 as @a[tag=pr.target,distance=..2] at @s run function pr:player/checkpoint/mark

execute positioned ~-2 ~-14 ~-28 run tag @a[tag=pr.target,dx=4,dy=11,dz=34] add lazy.invisibility
execute positioned ~0 ~1 ~-40 run tag @a[tag=pr.target,distance=..4] remove lazy.invisibility
execute positioned ~0 ~1 ~-40 run effect clear @a[tag=pr.target,distance=..4] invisibility