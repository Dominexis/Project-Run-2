# Mark checkpoint

data modify storage pr:data tag set from entity @s {}
execute store result score @s pr.temp_checkpoint_x run data get storage pr:data tag.Pos[0] 1000
execute store result score @s pr.temp_checkpoint_y run data get storage pr:data tag.Pos[1] 1000
execute store result score @s pr.temp_checkpoint_z run data get storage pr:data tag.Pos[2] 1000
execute store result score @s pr.temp_checkpoint_yaw run data get storage pr:data tag.Rotation[0]

tag @s add pr.temp_checkpoint

execute at @s align xyz run spawnpoint @s ~0.5 ~ ~0.5 ~
scoreboard players set @s pr.checkpoint_cooldown 20

scoreboard players operation @s pr.temp_checkpoint_sub_x = @s pr.temp_checkpoint_x
scoreboard players operation @s pr.temp_checkpoint_sub_y = @s pr.temp_checkpoint_y
scoreboard players operation @s pr.temp_checkpoint_sub_z = @s pr.temp_checkpoint_z
scoreboard players operation @s pr.temp_checkpoint_sub_x %= #1000 pr.value
scoreboard players operation @s pr.temp_checkpoint_sub_y %= #1000 pr.value
scoreboard players operation @s pr.temp_checkpoint_sub_z %= #1000 pr.value
scoreboard players operation @s pr.temp_checkpoint_x /= #1000 pr.value
scoreboard players operation @s pr.temp_checkpoint_y /= #1000 pr.value
scoreboard players operation @s pr.temp_checkpoint_z /= #1000 pr.value
return 1