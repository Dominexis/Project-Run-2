# This function will run when the plot turns off, which is when your plot becomes empty
# It will run in your plot on the center block at Y=0
# Use this to reset your plot and get rid of any laggy entities

fill ~-30 ~17 ~-25 ~-31 ~9 ~-26 air
scoreboard objectives remove teddy.boat
scoreboard objectives remove teddy.checkpointbool
kill @e[type=boat,tag=Snowvillage,tag=pr.target]