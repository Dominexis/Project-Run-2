# This function will run every tick while players are in your plot on the center block at Y=0
scoreboard players add new_wall loom.wall_hall 1
execute if score new_wall loom.wall_hall matches 40.. run function wall_hall:new_wall

scoreboard players add wall_move loom.wall_hall 1
execute if score wall_move loom.wall_hall matches 4.. as @e[type=armor_stand,tag=WallHall,tag=pr.target] at @s run function wall_hall:move_wall
execute if score wall_move loom.wall_hall matches 4.. run scoreboard players set wall_move loom.wall_hall 0



# execute store result storage loom.wall_hall wall_speed double -0.0001 run scoreboard players get wall_speed loom.wall_hall
# execute as @e[tag=pr.target,type=armor_stand,tag=WallHall] run data modify entity @s Motion[0] set from storage loom.wall_hall wall_speed
# execute positioned ~-35 ~-3 ~9 run kill @e[tag=pr.target,type=armor_stand,tag=WallHall,distance=..2]
# execute as @e[tag=pr.target,type=armor_stand,tag=WallHall] store result score @s loom.wall_hall_x_pos run data get entity @s Pos[0]
# execute as @e[tag=pr.target,type=armor_stand,tag=WallHall] unless score @s loom.wall_hall_x_pos = @s loom.wall_hall_prev_x_pos at @s run function wall_hall:move_wall


execute as @a[tag=pr.target,gamemode=!spectator] at @s unless block ~ ~0.5 ~ air run function wall_hall:collide
execute as @a[tag=pr.target,gamemode=!spectator,scores={loom.wall_hall_crouch=1..}] at @s if block ~ ~1 ~ smooth_stone_slab run scoreboard players set @s loom.wall_hall_crouch 2
execute as @a[tag=pr.target,gamemode=!spectator] at @s unless block ~ ~1 ~ air unless entity @s[scores={loom.wall_hall_crouch=2}] run function wall_hall:collide
scoreboard players set @a[tag=pr.target] loom.wall_hall_crouch 0



execute as @a[tag=pr.target] at @s if block ~ ~-0.1 ~ emerald_block run function pr:player/finish