
#runs as player to reset
effect clear @s
clear @s
experience set @s 10 levels
experience set @s 0 points
attribute @s generic.knockback_resistance base set 1.0
attribute @s generic.max_health base set 4
effect give @s instant_health 1 0 true
function zombie1111:player_giveitems
scoreboard players set @s zombie_reload 20