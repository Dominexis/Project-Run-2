# This function will run when the plot turns off, which is when your plot becomes empty
# It will run in your plot on the center block at Y=0
# Use this to reset your plot and get rid of any laggy entities

# kills entities
kill @e[tag=polds.blackwall,tag=pr.target]
kill @e[tag=polds.flipper,tag=pr.target]
kill @e[tag=polds.poldscredit,tag=pr.target]
kill @e[tag=polds.simoncredit,tag=pr.target]
kill @e[type=minecraft:item,tag=pr.target]
return 1