# This function will run when the plot turns off, which is when your plot becomes empty
# It will run in your plot on the center block at Y=0
# Use this to reset your plot and get rid of any laggy entities

kill @e[tag=sol.cp,tag=pr.target]
setblock ~-6 ~-12 ~12 red_terracotta