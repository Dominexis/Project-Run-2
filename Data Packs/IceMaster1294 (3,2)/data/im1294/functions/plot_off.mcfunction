# This function will run when the plot turns off, which is when your plot becomes empty
# It will run in your plot on the center block at Y=0
# Use this to reset your plot and get rid of any laggy entities
kill @e[type=minecraft:zombie,tag=pr.target]
kill @e[type=minecraft:skeleton,tag=pr.target]
kill @e[type=minecraft:drowned,tag=pr.target]
kill @e[type=minecraft:spider,tag=pr.target]
kill @e[type=minecraft:stray,tag=pr.target]
kill @e[type=minecraft:warden,tag=pr.target]
kill @e[type=minecraft:arrow,tag=pr.target]
kill @e[type=minecraft:item,tag=pr.target]
return 1