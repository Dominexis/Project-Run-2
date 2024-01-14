# Get motion and invulnerability state

scoreboard players operation @s pr.prev_mot_x = @s pr.mot_x
scoreboard players operation @s pr.prev_mot_y = @s pr.mot_y
scoreboard players operation @s pr.prev_mot_z = @s pr.mot_z







# Extract data from entity

data modify storage pr:data tag set from entity @s {}
execute store result score @s pr.mot_x run data get storage pr:data tag.Motion[0] 1000
execute store result score @s pr.mot_y run data get storage pr:data tag.Motion[1] 1000
execute store result score @s pr.mot_z run data get storage pr:data tag.Motion[2] 1000
execute store result score @s pr.stored_invulnerable run data get storage pr:data tag.Invulnerable







# Modify entity data

data merge entity @s {Invulnerable:1b}







# Add tag

tag @s add pr.entity.launch.invulnerable
return 1