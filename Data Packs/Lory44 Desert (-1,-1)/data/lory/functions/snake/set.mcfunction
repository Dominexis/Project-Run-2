
scoreboard players operation $snake_id.tmp lory.var = $snake_timer lory.var
scoreboard players operation $snake_id.tmp lory.var -= $snake_lenght lory.var

execute at @s[tag=colour.red] if score @s lory.snake_id < $snake_timer lory.var if score @s lory.snake_id >= $snake_id.tmp lory.var run setblock ~ ~ ~ minecraft:red_terracotta
execute at @s[tag=colour.orange] if score @s lory.snake_id < $snake_timer lory.var if score @s lory.snake_id >= $snake_id.tmp lory.var run setblock ~ ~ ~ minecraft:orange_terracotta



execute at @s if score @s lory.snake_id < $snake_id.tmp lory.var run setblock ~ ~ ~ minecraft:air
