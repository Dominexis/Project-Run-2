function inquognito:logic/plot/boss/particles/tractor_beam

execute positioned ~ ~92 ~ run function inquognito:logic/plot/boss/particles/tractor_beam

execute positioned ~-6.5 ~-36 ~-25.5 if entity @s[dx=2,dy=43,dz=2] run effect give @s minecraft:levitation 1 1 true
execute positioned ~-6.5 ~56 ~-25.5 if entity @s[dx=2,dy=43,dz=2] run effect give @s minecraft:levitation 1 1 true

execute positioned ~-6.5 ~-12 ~-25.5 if entity @s[dx=2,dy=0,dz=2] at @s run teleport @s ~ ~92 ~ ~ ~
