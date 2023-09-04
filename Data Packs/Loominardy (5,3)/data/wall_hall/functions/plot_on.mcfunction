# This function will run when the plot turns on, which is when players enter your plot after it was empty
# It will run in your plot on the center block at Y=0
# Use this to prepare your plot for players
scoreboard objectives add loom.wall_hall dummy
scoreboard objectives add loom.wall_hall_x_pos dummy
scoreboard objectives add loom.wall_hall_prev_x_pos dummy
scoreboard objectives add loom.wall_hall_crouch minecraft.custom:minecraft.sneak_time
scoreboard players set new_wall loom.wall_hall 0
scoreboard players set wall_speed loom.wall_hall 2000