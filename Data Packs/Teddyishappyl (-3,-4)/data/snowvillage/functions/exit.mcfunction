# This function runs as and at all players that exit your plot
# Use this to remove any scores/tags/effects/items from the player

clear @s
scoreboard players reset @s teddy.checkpointbool
scoreboard players reset @s teddy.boat
tag @s remove teddy.in_boat
return 1