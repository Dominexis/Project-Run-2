# This function runs as and at all players that exit your plot
# Use this to remove any scores/tags/effects/items from the player

scoreboard players reset @s earthmere_cp
scoreboard players reset @s earthmere_start
scoreboard players reset @s earthmere_end

tag @s remove earthmere_start
tag @s remove earthmere_end
tag @s remove earthmere_launch
tag @s remove earthmere_launch2

effect clear @s minecraft:jump_boost
effect clear @s minecraft:blindness