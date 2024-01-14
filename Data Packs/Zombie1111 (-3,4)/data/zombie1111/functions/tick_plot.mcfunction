# This function will run every tick while players are in your plot on the center block at Y=0
scoreboard players add secTimer zombie_rngV 1
execute as @a[tag=zombiePlotPlayer,tag=pr.target] at @s run function zombie1111:player_tick
execute if score secTimer zombie_rngV matches 20.. run function zombie1111:sec_plot
#execute as @e[type=marker,tag=zombiePlot] at @s run function zombie1111:as_my_markers
execute as @e[type=minecraft:marker,tag=zombieDeathPos,tag=pr.target] unless predicate zombie1111:ismobdied at @s run function zombie1111:mob_death_pos
execute as @e[type=minecraft:armor_stand,tag=zombieBullet,tag=pr.target] at @s run function zombie1111:laser_tick



return 1