# This function will run when the plot turns off, which is when your plot becomes empty
# It will run in your plot on the center block at Y=0
# Use this to reset your plot and get rid of any laggy entities
kill @e[tag=pr.target,type=item_display,tag=brosephmcItemDisplay]
scoreboard players reset debris brosephmc_mc_pr_otherTimer
kill @e[tag=pr.target,tag=tunnelBat]
kill @e[tag=pr.target,tag=batZombie]
kill @e[tag=pr.target,tag=batSpawn]
kill @e[tag=pr.target,tag=textArrow]