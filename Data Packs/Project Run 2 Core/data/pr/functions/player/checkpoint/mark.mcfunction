# Mark checkpoint

execute unless score @s pr.checkpoint_cooldown matches 1.. run data modify storage pr:data tag set from entity @s {}
execute unless score @s pr.checkpoint_cooldown matches 1.. store result score @s pr.temp_checkpoint_x run data get storage pr:data tag.Pos[0]
execute unless score @s pr.checkpoint_cooldown matches 1.. store result score @s pr.temp_checkpoint_y run data get storage pr:data tag.Pos[1]
execute unless score @s pr.checkpoint_cooldown matches 1.. store result score @s pr.temp_checkpoint_z run data get storage pr:data tag.Pos[2]
execute unless score @s pr.checkpoint_cooldown matches 1.. store result score @s pr.temp_checkpoint_yaw run data get storage pr:data tag.Rotation[0]

execute unless score @s pr.checkpoint_cooldown matches 1.. run scoreboard players add @s pr.temp_checkpoint_yaw 45
execute unless score @s pr.checkpoint_cooldown matches 1.. run scoreboard players operation @s pr.temp_checkpoint_yaw /= #90 pr.value
execute unless score @s pr.checkpoint_cooldown matches 1.. run scoreboard players operation @s pr.temp_checkpoint_yaw *= #90 pr.value
execute unless score @s pr.checkpoint_cooldown matches 1.. run scoreboard players operation @s pr.temp_checkpoint_yaw %= #360 pr.value

execute unless score @s pr.checkpoint_cooldown matches 1.. run scoreboard players set @s pr.temp_checkpoint_sub_x 500
execute unless score @s pr.checkpoint_cooldown matches 1.. run scoreboard players set @s pr.temp_checkpoint_sub_y 0
execute unless score @s pr.checkpoint_cooldown matches 1.. run scoreboard players set @s pr.temp_checkpoint_sub_z 500

execute unless score @s pr.checkpoint_cooldown matches 1.. run tag @s add pr.temp_checkpoint

execute unless score @s pr.checkpoint_cooldown matches 1.. at @s align xyz run spawnpoint @s ~0.5 ~1 ~0.5 ~
execute unless score @s pr.checkpoint_cooldown matches 1.. run scoreboard players set @s pr.checkpoint_cooldown 20