# This function will run when the plot turns off, which is when your plot becomes empty
# It will run in your plot on the center block at Y=0
# Use this to reset your plot and get rid of any laggy entities
scoreboard objectives remove timerCDs
execute at @e[type=marker,tag=bumper] as @e[type=minecraft:slime,distance=..1] at @s run tp @s ~ -500 ~
kill @e[type=marker,tag=bumper]
kill @e[type=marker,tag=check]