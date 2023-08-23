# Pressure plate = checkpoint + sound

execute as @a[tag=pr.target] at @s if block ~ ~ ~ heavy_weighted_pressure_plate run function pr:player/checkpoint/mark
execute as @a[tag=pr.target] at @s if block ~ ~ ~ heavy_weighted_pressure_plate if score @s warshito.isInCheckpoint matches 0 run scoreboard players set @s warshito.isInCheckpoint 1
execute as @a[tag=pr.target] at @s if score @s warshito.isInCheckpoint matches 1 run playsound minecraft:entity.experience_orb.pickup master @s
execute as @a[tag=pr.target] at @s if score @s warshito.isInCheckpoint matches 1 run scoreboard players set @s warshito.isInCheckpoint 2
execute as @a[tag=pr.target] at @s unless block ~ ~ ~ heavy_weighted_pressure_plate run scoreboard players set @s warshito.isInCheckpoint 0


execute as @a[tag=pr.target,tag=house] at @s if block ~ ~-1 ~ white_concrete run tp @s ~ ~ ~ 180 0
execute as @a[tag=pr.target,tag=D_finished] at @s if block ~ ~-1 ~ white_concrete run tag @s remove house
execute as @a[tag=pr.target,tag=D_finished] at @s if block ~ ~-1 ~ white_concrete run function warshito:choose_color
execute as @a[tag=pr.target,tag=D_finished] at @s if block ~ ~-1 ~ white_concrete run tag @s remove D_finished