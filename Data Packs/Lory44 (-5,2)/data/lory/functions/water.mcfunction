scoreboard players operation #local lory = @s lory
execute as @a[dx=37,dz=33,dy=-116,tag=lory.playing,tag=pr.target] if score @s lory = #local lory run function lory:die
execute as @a[tag=lory.playing,tag=pr.target] if score @s lory = #local lory run particle dust 0.200 0.300 1.000 1 ~17.5 ~ ~17.5 7 0 7 1 250 force @s
tp ~ ~.03 ~