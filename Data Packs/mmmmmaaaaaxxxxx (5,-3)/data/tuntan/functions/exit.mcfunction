# This function runs as and at all players that exit your plot
# Use this to remove any scores/tags/effects/items from the player
clear @s
effect clear @s
scoreboard players reset @s tuntan_points
scoreboard players reset @s tuntan_tunnels
scoreboard players reset @s tuntan_clicked
tag @s remove tuntan.finished1
tag @s remove tuntan.finished2
tag @s remove tuntan.finished3
tag @s remove tuntan.finished4
tag @s remove tuntan.finished5
tag @s remove tuntan.finished6
tag @s remove tuntan.finished7
tag @s remove tuntan.finished8
tag @s remove tuntan.finished9
tag @s remove tuntan.finished10
tag @s remove tuntan.enoughpoints