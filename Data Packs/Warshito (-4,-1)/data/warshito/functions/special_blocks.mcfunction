# Concrete powder = speed
execute as @a[tag=pr.target] at @s if block ~ ~-1 ~ #warshito:concrete_powder run effect give @s minecraft:speed infinite 10 true
execute as @a[tag=pr.target] at @s unless block ~ ~-1 ~ #warshito:concrete_powder unless block ~ ~-1 ~ air unless block ~ ~-1 ~ minecraft:light run effect clear @s minecraft:speed

# Wool = Jump boost
execute as @a[tag=pr.target] at @s if block ~ ~-1 ~ #minecraft:wool run effect give @s minecraft:jump_boost infinite 5 true
execute as @a[tag=pr.target] at @s unless block ~ ~-1 ~ #minecraft:wool unless block ~ ~-1 ~ air unless block ~ ~-1 ~ minecraft:light run effect clear @s minecraft:jump_boost