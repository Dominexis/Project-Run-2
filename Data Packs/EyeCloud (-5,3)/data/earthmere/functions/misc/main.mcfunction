execute if entity @s[gamemode=!creative,gamemode=!spectator] run function earthmere:misc/death_planes

execute positioned ~-0.5 ~-33 ~15.5 run effect give @s[dx=3,dy=3,dz=2] minecraft:jump_boost 1 255 true
execute positioned ~23 ~-5 ~-9 run effect give @s[dx=5,dy=1,dz=7] minecraft:jump_boost 1 255 true

execute positioned ~19.5 ~-11.5 ~-11.5 at @s[dx=5,dy=5,dz=11,tag=!earthmere_tnt] run playsound earthmere:prime master @s ~ ~ ~ 5 1
execute positioned ~19.5 ~-11.5 ~-11.5 run tag @s[dx=5,dy=5,dz=11,tag=!earthmere_tnt] add earthmere_tnt
return 1