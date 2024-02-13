execute at @s[tag=rko_rotate180f] run function rko:misc/rotate/fast
execute at @s[tag=rko_rotate180s] run function rko:misc/rotate/slow

execute positioned ~-40 ~ ~-40 if entity @s[gamemode=!creative,gamemode=!spectator,tag=!rko_finish] run function rko:misc/death/planes

#execute positioned ~-1.5 ~106 ~-23.5 run tag @s[dx=2,dy=0,dz=2] add rko_rotate180s

execute positioned ~-1.5 ~73.5 ~-23.5 run tag @s[dx=2,dy=3,dz=2] add rko_nofall
execute positioned ~-1.5 ~85 ~27.5 run tag @s[dx=2,dy=0,dz=2] add rko_nofall

execute positioned ~-2.5 ~65 ~-2.5 at @s[dx=4,dy=1,dz=4,tag=!rko_finish] run function rko:misc/win/drop

function rko:misc/effects

function rko:misc/stopsound

tag @s[tag=!rko_boost,scores={RKO_Factory_Boost=1..}] add rko_boost

execute positioned ~-2.5 ~11 ~-2.5 if entity @s[dx=4,dy=1,dz=4,tag=rko_finish] positioned ~2.5 ~-11 ~2.5 run function rko:misc/win/land
execute if entity @s[tag=rko_finish_land] run function rko:misc/win/sequence
return 1