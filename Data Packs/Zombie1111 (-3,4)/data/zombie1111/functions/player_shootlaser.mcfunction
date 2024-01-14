


#runs as player that shoot in my plot
scoreboard players remove @s zombie_reload 5
playsound zombie1111:zombie_sounds.laser_shoot player @a ~ ~ ~ 1 0.4
scoreboard players set @s zombie_shootlaser 0
summon minecraft:armor_stand ~ ~1 ~ {Tags:["zombiePlot","zombieBullet","zombieNew","pr.target"],NoGravity:1b,Invisible:1b,Invulnerable:1b}
scoreboard players operation @e[type=minecraft:armor_stand,tag=zombieNew,tag=pr.target,limit=1] zombie_idplayer = @s zombie_idplayer
execute as @e[type=minecraft:armor_stand,tag=zombieNew,tag=pr.target,limit=1] run function zombie1111:player_shootlaser_configure
scoreboard players add nextIdToGive zombie_id 1






return 1