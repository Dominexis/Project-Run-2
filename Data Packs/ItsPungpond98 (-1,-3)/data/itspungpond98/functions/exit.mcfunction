# This function runs as and at all players that exit your plot
# Use this to remove any scores/tags/effects/items from the player

clear @s minecraft:verdant_froglight
clear @s minecraft:pearlescent_froglight

tag @s remove itspungpond98.getinfo
scoreboard players reset @s itspungpond98.info

tag @s remove itspungpond98.havepearlescent
tag @s remove itspungpond98.haveverdant

tag @s remove itspungpond98.fail
return 1