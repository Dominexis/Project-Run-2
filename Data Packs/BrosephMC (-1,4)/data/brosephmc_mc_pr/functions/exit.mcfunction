# This function runs as and at all players that exit your plot
# Use this to remove any scores/tags/effects/items from the player
tellraw @s [{"text":"Thanks for playing! ","color":"green"},{"text":"Motor Course level by BrosephMC","color":"dark_green"}]
effect clear @s minecraft:night_vision
tag @s remove onTheRoad
tag @s remove stoppedWindSound