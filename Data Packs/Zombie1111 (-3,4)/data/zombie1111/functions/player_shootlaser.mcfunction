


#runs as player that shoot in my plot
scoreboard players remove @s zombie_reload 10
playsound minecraft:zombie_sounds.laser_shoot player @a ~ ~ ~ 1 0.4
scoreboard players set @s zombie_shootlaser 0
summon armor_stand ~ ~1 ~ {Tags:["zombiePlot","zombieBullet","zombieNew"],NoGravity:1b,Invisible:1b,Invulnerable:1b}
scoreboard players operation @e[type=armor_stand,tag=zombieNew,limit=1] zombie_idplayer = @s zombie_idplayer
execute as @e[type=armor_stand,tag=zombieNew,limit=1] run function zombie1111:player_shootlaser_configure
scoreboard players add nextIdToGive zombie_id 1





