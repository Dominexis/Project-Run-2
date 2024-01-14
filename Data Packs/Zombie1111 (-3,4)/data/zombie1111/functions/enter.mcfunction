# This function runs as and at all players that enter your plot
scoreboard players add nextIdToGive zombie_id 1
scoreboard players operation @s zombie_idplayer = nextIdToGive zombie_id
tag @s add zombiePlotPlayer
function zombie1111:player_reset


return 1