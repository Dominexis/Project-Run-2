
tag @s add lory.snake_part
tag @s[predicate=lory:random_snake] add colour.red
tag @s[tag=!colour.red] add colour.orange

scoreboard players add @e[type=marker,distance=..32,tag=lory.snake_part] lory.snake_id 1
