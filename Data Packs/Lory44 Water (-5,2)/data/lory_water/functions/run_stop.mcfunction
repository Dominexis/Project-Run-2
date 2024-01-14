scoreboard players operation #local lory = @s lory
execute as @e[tag=lory.water,tag=pr.target] if score @s lory = #local lory run kill @s
tag @s remove lory.playing
return 1