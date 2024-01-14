# bettermark is copied from 'player\checkpoint\mark.function' in the project run core, and modified slightly.
# it adds a way to customize the checkpoint location via a marker entity, instead of using the player location.
# this prevents the checkpoint spawning with undesirable xyz or yaw values.

summon minecraft:marker ~ ~ ~ {UUID:[I;1863578265,-1110815006,-1738196312,711234793]}
tp 6f13f299-bdca-4ee2-9865-3aa82a6494e9 ~ ~ ~ ~ ~
data modify storage pr:data tag set from entity @s {}
execute store result score @s pr.temp_checkpoint_x run data get entity 6f13f299-bdca-4ee2-9865-3aa82a6494e9 Pos[0]
execute store result score @s pr.temp_checkpoint_y run data get entity 6f13f299-bdca-4ee2-9865-3aa82a6494e9 Pos[1]
execute store result score @s pr.temp_checkpoint_yaw run data get entity 6f13f299-bdca-4ee2-9865-3aa82a6494e9 Rotation[0]
execute store result score @s pr.temp_checkpoint_z run data get entity 6f13f299-bdca-4ee2-9865-3aa82a6494e9 Pos[2]
kill 6f13f299-bdca-4ee2-9865-3aa82a6494e9

#scoreboard players add @s pr.temp_checkpoint_yaw 45
scoreboard players operation @s pr.temp_checkpoint_yaw %= #360 pr.value
scoreboard players operation @s pr.temp_checkpoint_yaw *= #90 pr.value
scoreboard players operation @s pr.temp_checkpoint_yaw /= #90 pr.value
tag @s add pr.temp_checkpoint

scoreboard players set @s pr.temp_checkpoint_sub_x 500
scoreboard players set @s pr.temp_checkpoint_sub_y 0
scoreboard players set @s pr.temp_checkpoint_sub_z 500
return 1