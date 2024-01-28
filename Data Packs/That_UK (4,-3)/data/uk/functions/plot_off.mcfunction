# This function will run when the plot turns off, which is when your plot becomes empty
# It will run in your plot on the center block at Y=0
# Use this to reset your plot and get rid of any laggy entities

scoreboard objectives remove uk_value
scoreboard objectives remove uk_code
scoreboard objectives remove uk_kill

kill @e[type=minecraft:pillager,tag=pr.target]
kill @e[type=minecraft:marker,tag=pr.target]
kill @e[type=minecraft:arrow,tag=pr.target]
kill @e[type=minecraft:item,tag=pr.target]
kill @e[type=minecraft:experience_orb,tag=pr.target]
return 1