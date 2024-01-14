execute positioned ~32.5 ~65 ~-10.5 run tag @s[dx=5,dy=6,dz=4,tag=!earthmere_start] add earthmere_start
execute if entity @s[tag=earthmere_start] run function earthmere:sequence/start

execute positioned ~-39.5 ~12 ~-10.5 run tag @s[dx=12,dy=6,dz=14,tag=!earthmere_end,scores={earthmere_cp=4..}] add earthmere_end
execute if entity @s[tag=earthmere_end] run function earthmere:sequence/end
return 1