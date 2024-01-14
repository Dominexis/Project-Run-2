execute at @s if block ~ ~ ~ minecraft:water run kill @s
execute at @s if block ~ ~ ~ minecraft:twisting_vines run kill @s

execute positioned ~-29 ~-52 ~-20 run kill @s[dx=70,dy=1,dz=45]
execute positioned ~12 ~-19 ~-39 run kill @s[dx=27,dy=1,dz=20]
execute positioned ~2 ~-3 ~-39 run kill @s[dx=17,dy=1,dz=20]
execute positioned ~19 ~-26 ~-1 unless entity @s[distance=..5] positioned ~-19 ~26 ~1 positioned ~-40 ~-26 ~-40 run kill @s[dx=80,dy=1,dz=80,tag=!earthmere_launch,tag=!earthmere_launch2]
execute positioned ~-25 ~-19 ~-36 run kill @s[dx=25,dy=3,dz=15]
return 1