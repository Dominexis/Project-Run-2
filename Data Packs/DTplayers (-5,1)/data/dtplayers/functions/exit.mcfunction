#EXIT: This function will run as a player who exits your plot. Make sure you remove any tags, items, effects etc. from them when they leave. This runs as players when they log back in after having been in your plot.

effect clear @s
clear @s
scoreboard players set @s dtplayers.oxygen -1

tag @s remove dtplayers.in_oxygen

