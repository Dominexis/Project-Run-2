# Assign NBT data

data modify storage pr:data tag set value {Motion:[0.0d,0.0d,0.0d],Invulnerable:1b}
execute store result storage pr:data tag.Motion[0] double 0.001 run scoreboard players get @s pr.mot_x
execute store result storage pr:data tag.Motion[1] double 0.001 run scoreboard players get @s pr.mot_y
execute store result storage pr:data tag.Motion[2] double 0.001 run scoreboard players get @s pr.mot_z
execute store result storage pr:data tag.Invulnerable byte 1 run scoreboard players get @s pr.stored_invulnerable
data modify entity @s {} merge from storage pr:data tag







# Push scores

scoreboard players operation @s pr.mot_x = @s pr.prev_mot_x
scoreboard players operation @s pr.mot_y = @s pr.prev_mot_y
scoreboard players operation @s pr.mot_z = @s pr.prev_mot_z







# Remove tag

tag @s remove pr.entity.launch.invulnerable