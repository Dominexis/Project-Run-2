# This function runs as and at all players that exit your plot
# Use this to remove any scores/tags/effects/items from the player

title @s clear
title @s times 20 80 20

function kello:player/setup/exit
return 1