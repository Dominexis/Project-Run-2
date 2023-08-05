# This function will run when the plot turns off, which is when your plot becomes empty
# It will run in your plot on the center block at Y=0
# Use this to reset your plot and get rid of any laggy entities

#Remove scoreboards
scoreboard objectives remove zombie_rngC
scoreboard objectives remove zombie_rngV
scoreboard objectives remove zombie_id
scoreboard objectives remove zombie_mobkill
scoreboard objectives remove zombie_dropitem
scoreboard objectives remove zombie_shootlaser
scoreboard objectives remove zombie_lifeTime
scoreboard objectives remove zombie_idplayer
scoreboard objectives remove zombie_reload

#kill entites
kill @e[tag=zombiePlot,tag=pr.target]