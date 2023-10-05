# This function will run when the plot turns off, which is when your plot becomes empty
# It will run in your plot on the center block at Y=0
# Use this to reset your plot and get rid of any laggy entities

scoreboard objectives remove Swag.HorsePing
scoreboard objectives remove Swag.TickDelay

execute as @a[tag=pr.target] run ride @s dismount

kill @e[type=cave_spider,tag=pr.target]
kill @e[type=horse,tag=pr.target]
kill @e[type=item,tag=pr.target]