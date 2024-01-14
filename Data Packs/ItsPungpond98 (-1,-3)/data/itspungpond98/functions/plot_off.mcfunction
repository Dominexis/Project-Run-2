# This function will run when the plot turns off, which is when your plot becomes empty
# It will run in your plot on the center block at Y=0
# Use this to reset your plot and get rid of any laggy entities

#Set Exit Score
scoreboard players set verdant itspungpond98.exit 0
scoreboard players set pearlescent itspungpond98.exit 0

#Fill Walls
fill ~37 ~17 ~-1 ~37 ~17 ~1 minecraft:mud_brick_wall
fill ~37 ~18 ~-1 ~37 ~19 ~1 minecraft:iron_bars

fill ~-37 ~17 ~-1 ~-37 ~17 ~1 minecraft:mud_brick_wall
fill ~-37 ~18 ~-1 ~-37 ~19 ~1 minecraft:iron_bars

kill @e[type=minecraft:armor_stand,tag=pr.target]
kill @e[type=minecraft:villager,tag=pr.target]
return 1