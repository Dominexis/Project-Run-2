execute unless block ~ ~ ~ minecraft:light run clone ~1 ~3 ~ ~1 ~7 ~13 ~ ~3 ~
fill ~1 ~3 ~ ~1 ~7 ~13 minecraft:air
# scoreboard players operation @s loom.wall_hall_prev_x_pos = @s loom.wall_hall_x_pos
tp @s ~-1 ~ ~
execute if block ~ ~ ~ minecraft:light run kill @s
return 1