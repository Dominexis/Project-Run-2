scoreboard players operation @s lory = idcounter lory
execute positioned ~-17.5 ~-6 ~-17.5 run summon minecraft:marker ~ ~ ~ {Tags:["lory.water","lory.current","pr.target"]}
scoreboard players operation @e[tag=lory.current,tag=pr.target] lory = idcounter lory
tag @e[tag=lory.current,tag=pr.target] remove lorry.current
scoreboard players add idcounter lory 1
tag @s add lory.playing
return 1