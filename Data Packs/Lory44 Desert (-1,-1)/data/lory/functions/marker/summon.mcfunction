
tag @s add lory.snake_part
tag @s[predicate=lory:random_snake] add colour.red
tag @s[tag=!colour.red] add colour.orange
tag @s add pr.target

scoreboard players add @e[type=minecraft:marker,distance=..32,tag=lory.snake_part,tag=pr.target] lory.snake_id 1

return 1