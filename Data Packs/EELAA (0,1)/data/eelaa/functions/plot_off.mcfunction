# This function will run when the plot turns off, which is when your plot becomes empty
# It will run in your plot on the center block at Y=0
# Use this to reset your plot and get rid of any laggy entities

kill @e[tag=pr.target,type=item]
kill @e[tag=pr.target,type=trident]
scoreboard objectives remove eelaa_tridents
scoreboard objectives remove eelaa_item_count