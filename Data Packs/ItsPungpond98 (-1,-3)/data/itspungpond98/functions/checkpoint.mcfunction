execute as @a[tag=itspungpond98.getinfo,tag=pr.target] at @s if block ~ ~ ~ minecraft:water run scoreboard players add @s pr.death 1
execute as @a[tag=itspungpond98.getinfo,tag=pr.target] at @s if block ~ ~ ~ minecraft:seagrass run scoreboard players add @s pr.death 1
execute as @a[tag=itspungpond98.getinfo,tag=pr.target] at @s if block ~ ~ ~ minecraft:tall_seagrass run scoreboard players add @s pr.death 1

return 1