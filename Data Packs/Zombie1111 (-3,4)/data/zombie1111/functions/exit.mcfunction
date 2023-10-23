# This function runs as and at all players that exit your plot
# Use this to remove any scores/tags/effects/items from the player
tag @s remove zombiePlotPlayer
effect clear @s
clear @s
attribute @s generic.knockback_resistance base set 0.0
attribute @s generic.max_health base set 20
effect give @s instant_health 1 69 true