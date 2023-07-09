# This function runs as and at all players that exit your plot
# Use this to remove any scores/tags/effects/items from the player
clear @s
scoreboard players set @s sliceoflife.cp 0
effect clear @s