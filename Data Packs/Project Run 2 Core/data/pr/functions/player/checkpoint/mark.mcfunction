# Mark checkpoint

data modify storage pr:data tag set from entity @s {}
execute store result score @s pr.temp_checkpoint_x run data get storage pr:data tag.Pos[0]
execute store result score @s pr.temp_checkpoint_y run data get storage pr:data tag.Pos[1]
execute store result score @s pr.temp_checkpoint_z run data get storage pr:data tag.Pos[2]
execute store result score @s pr.temp_checkpoint_yaw run data get storage pr:data tag.Rotation[0]

scoreboard players add @s pr.temp_checkpoint_yaw 45
scoreboard players operation @s pr.temp_checkpoint_yaw /= #90 pr.value
scoreboard players operation @s pr.temp_checkpoint_yaw *= #90 pr.value
scoreboard players operation @s pr.temp_checkpoint_yaw %= #360 pr.value

tag @s add pr.temp_checkpoint

execute at @s align xyz run spawnpoint @s ~0.5 ~ ~0.5 ~