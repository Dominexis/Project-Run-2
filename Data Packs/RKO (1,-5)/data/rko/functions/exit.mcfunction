# This function runs as and at all players that exit your plot
# Use this to remove any scores/tags/effects/items from the player

tag @s[tag=rko_fan_launch1] remove rko_fan_launch1
tag @s[tag=rko_fan_launch2] remove rko_fan_launch2
tag @s[tag=rko_fan_launch3] remove rko_fan_launch3
tag @s[tag=rko_fan_launch4] remove rko_fan_launch4
tag @s[tag=rko_fan_launch5] remove rko_fan_launch5
tag @s[tag=rko_fan_launch6] remove rko_fan_launch6

tag @s[tag=rko_pipe_launch] remove rko_pipe_launch
tag @s[tag=rko_finish] remove rko_finish
tag @s[tag=rko_finish_land] remove rko_finish_land
tag @s[tag=rko_nofall] remove rko_nofall
tag @s[tag=rko_nofall_remove] remove rko_nofall_remove
tag @s[tag=rko_return_f] remove rko_return_f
tag @s[tag=rko_return_p] remove rko_return_p
tag @s[tag=rko_return_b] remove rko_return_b

scoreboard players reset @s rko.checkpoint
scoreboard players reset @s rko.jump
scoreboard players reset @s rko.win

effect clear @s minecraft:levitation
effect clear @s minecraft:jump_boost
effect clear @s minecraft:speed