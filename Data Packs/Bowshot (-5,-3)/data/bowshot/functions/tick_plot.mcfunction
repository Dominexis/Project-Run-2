execute as @a[tag=pr.target] at @s positioned ~-1 -23 ~-1 if entity @s[dx=1,dy=4,dz=1] run kill @s
execute as @a[tag=pr.target] at @s if block ~ ~-0.1 ~ minecraft:oxidized_cut_copper run function pr:player/finish
return 1