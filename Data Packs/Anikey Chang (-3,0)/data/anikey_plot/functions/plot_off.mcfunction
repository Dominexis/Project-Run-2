# This function will run when the plot turns off, which is when your plot becomes empty
# It will run in your plot on the center block at Y=0
# Use this to reset your plot and get rid of any laggy entities

kill @e[type=minecraft:marker,tag=anikey_tp_in]

kill @e[type=minecraft:marker,tag=anikey_floating_table]
return 1