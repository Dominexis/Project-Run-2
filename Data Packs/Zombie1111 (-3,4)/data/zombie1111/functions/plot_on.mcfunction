# This function will run when the plot turns on, which is when players enter your plot after it was empty
# It will run in your plot on the center block at Y=0
# Use this to prepare your plot for players

#Create scoreboards
scoreboard objectives add zombie_rngC dummy
scoreboard objectives add zombie_rngV dummy
scoreboard objectives add zombie_id dummy
scoreboard objectives add zombie_mobkill totalKillCount
scoreboard objectives add zombie_dropitem minecraft.custom:minecraft.drop
scoreboard objectives add zombie_shootlaser minecraft.used:carrot_on_a_stick
scoreboard objectives add zombie_lifeTime dummy
scoreboard objectives add zombie_idplayer dummy
scoreboard objectives add zombie_reload dummy
scoreboard players set RNGseed zombie_rngV 0
scoreboard players set C_1000 zombie_rngC 1000
scoreboard players set C_314159 zombie_rngC 314159
scoreboard players set C_2718281 zombie_rngC 2718281
scoreboard players set C_7 zombie_rngC 7
scoreboard players set C_2 zombie_rngC 2
scoreboard players set C_50 zombie_rngC 50
scoreboard players set C_-1 zombie_rngC -1
scoreboard players set C_1000 zombie_rngC 1000
scoreboard players set nextIdToGive zombie_id 0

