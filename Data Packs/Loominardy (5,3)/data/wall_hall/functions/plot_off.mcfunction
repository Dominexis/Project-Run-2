# This function will run when the plot turns off, which is when your plot becomes empty
# It will run in your plot on the center block at Y=0
# Use this to reset your plot and get rid of any laggy entities
scoreboard objectives remove loom.wall_hall
scoreboard objectives remove loom.wall_hall_crouch
kill @e[tag=pr.target,tag=WallHall,type=minecraft:armor_stand]