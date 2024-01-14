# This function will run when the plot turns off, which is when your plot becomes empty
# It will run in your plot on the center block at Y=0
# Use this to reset your plot and get rid of any laggy entities
fill ~-2 ~5 ~-13 ~2 ~5 ~-13 minecraft:emerald_block
kill @e[tag=loki,tag=pr.target]
kill @e[tag=lokierror,tag=pr.target]
kill @e[tag=lokibarr,tag=pr.target]
scoreboard objectives remove lokicode
return 1