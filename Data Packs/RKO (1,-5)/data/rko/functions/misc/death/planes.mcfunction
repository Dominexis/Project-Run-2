# Factory #
execute positioned ~ ~-1 ~ run tag @s[dx=80,dy=3,dz=80] add rko_return_f
execute positioned ~ ~5 ~32 run tag @s[dx=80,dy=7,dz=17] add rko_return_f

execute positioned ~ ~36 ~56 run tag @s[dx=80,dy=0,dz=24] add rko_return_f

execute positioned ~ ~15 ~ run tag @s[dx=80,dy=0,dz=32] add rko_return_f

execute positioned ~52.5 ~41 ~35.5 unless entity @s[dx=16,dy=0,dz=6] positioned ~ ~-1 ~ run tag @s[dx=16,dy=0,dz=6] add rko_return_f
execute positioned ~9.5 ~41 ~35.5 unless entity @s[dx=16,dy=0,dz=6] positioned ~ ~-1 ~ run tag @s[dx=16,dy=0,dz=6] add rko_return_f

execute positioned ~ ~55 ~ run tag @s[dx=80,dy=0,dz=80,tag=!rko_pipe_launch] add rko_return_f
execute positioned ~ ~80 ~ run tag @s[dx=80,dy=0,dz=80,tag=rko_pipe_launch] remove rko_pipe_launch

# Pipe #
execute positioned ~13.5 ~108 ~51.5 run tag @s[dx=52,dy=1.1,dz=23] add rko_return_p
execute positioned ~35.5 ~108 ~22.5 run tag @s[dx=8,dy=1.1,dz=30] add rko_return_p

execute unless entity @s[tag=!rko_return_f,tag=!rko_return_p,tag=!rko_return_b] run scoreboard players set @s pr.death 1
execute unless entity @s[tag=!rko_return_f,tag=!rko_return_p,tag=!rko_return_b] run effect give @s minecraft:jump_boost 1 255 true