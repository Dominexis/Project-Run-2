execute unless block ~ ~ ~ light run clone ~1 ~3 ~ ~1 ~7 ~13 ~ ~3 ~
fill ~1 ~3 ~ ~1 ~7 ~13 air
# scoreboard players operation @s loom.wall_hall_prev_x_pos = @s loom.wall_hall_x_pos
tp @s ~-1 ~ ~
execute if block ~ ~ ~ light run kill @s