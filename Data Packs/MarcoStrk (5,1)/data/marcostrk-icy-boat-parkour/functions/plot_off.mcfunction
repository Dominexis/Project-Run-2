# This function will run when the plot turns off, which is when your plot becomes empty
# It will run in your plot on the center block at Y=0
# Use this to reset your plot and get rid of any laggy entities
scoreboard objectives remove marcostrk-icy-boat-parkour-inside_boat
scoreboard objectives remove marcostrk-icy-boat-parkour-checkpoint-timer
scoreboard objectives remove marcostrk-icy-boat-parkour-died
scoreboard objectives remove marcostrk-icy-boat-parkour-game-time
scoreboard objectives remove marcostrk-icy-boat-parkour-tmp
scoreboard objectives remove marcostrk-icy-boat-parkour-20

kill @e[tag=marcostrk-icy-boat-parkour-Center,type=minecraft:marker]
kill @e[tag=marcostrk-icy-boat-parkour-Jump,type=minecraft:marker]
kill @e[tag=marcostrk-icy-boat-parkour-NoGravity,type=minecraft:marker]
kill @e[tag=marcostrk-icy-boat-parkour-Finish,type=minecraft:marker]
kill @e[type=boat,tag=pr.target]