# This function runs as and at all players that enter your plot

# Reset player to a default state
effect clear @s
clear @s
effect give @s minecraft:instant_health 1 10 true

# Give effects for plot
effect give @s minecraft:resistance infinite 9 true
# (saturation is in core)

# Starting jingle
scoreboard players set @s sdmc.start-jingle 0
return 1