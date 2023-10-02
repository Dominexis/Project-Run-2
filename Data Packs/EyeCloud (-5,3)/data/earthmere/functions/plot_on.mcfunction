# This function will run when the plot turns on, which is when players enter your plot after it was empty
# It will run in your plot on the center block at Y=0
# Use this to prepare your plot for players

scoreboard objectives add earthmere_cp dummy
scoreboard objectives add earthmere_time dummy
scoreboard objectives add earthmere_start dummy
scoreboard objectives add earthmere_end dummy

function earthmere:checkpoint/spawn