


#runs every tick as all players in my plot
scoreboard players add @s zombie_reload 1
execute if score @s zombie_mobkill matches 1.. run function zombie1111:player_killmob
execute if score @s zombie_dropitem matches 1.. run function zombie1111:player_dropitem
execute if score @s zombie_shootlaser matches 1.. if score @s zombie_reload matches 5.. positioned ~ ~1 ~ run function zombie1111:player_shootlaser
execute if block ~ ~-0.9 ~ #zombie1111:deathblocks run kill @s



return 1