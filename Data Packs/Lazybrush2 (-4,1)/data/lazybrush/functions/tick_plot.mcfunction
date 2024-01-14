effect give @a[tag=pr.target,tag=lazy.invisibility] minecraft:invisibility infinite 0 true
execute positioned ~-3 ~-6 ~-37 as @a[distance=..2,tag=pr.target] at @s run function pr:player/checkpoint/mark

execute positioned ~-2 ~-14 ~-28 run tag @a[dx=4,dy=11,dz=34,tag=pr.target] add lazy.invisibility
execute positioned ~0 ~1 ~-40 run tag @a[distance=..4,tag=pr.target] remove lazy.invisibility
execute positioned ~0 ~1 ~-40 run effect clear @a[distance=..4,tag=pr.target] minecraft:invisibility
return 1