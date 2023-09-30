execute if block ~ ~-1 ~ minecraft:barrier run tag @s add kello.entity.chain_process
execute if block ~ ~-1 ~ minecraft:barrier if block ~ ~-1 ~-1 minecraft:barrier if block ~ ~-1 ~1 air run tag @s add kello.entity.chain_south
execute if block ~ ~-1 ~ minecraft:barrier if block ~ ~-1 ~1 minecraft:barrier if block ~ ~-1 ~-1 air run tag @s add kello.entity.chain_north

execute if block ~ ~-1 ~ minecraft:jungle_planks run tag @s add kello.entity.chain_process
execute if block ~ ~-1 ~ minecraft:jungle_planks if block ~ ~-1 ~-1 minecraft:jungle_planks if block ~ ~-1 ~1 air run tag @s add kello.entity.chain_south
execute if block ~ ~-1 ~ minecraft:jungle_planks if block ~ ~-1 ~1 minecraft:jungle_planks if block ~ ~-1 ~-1 air run tag @s add kello.entity.chain_north