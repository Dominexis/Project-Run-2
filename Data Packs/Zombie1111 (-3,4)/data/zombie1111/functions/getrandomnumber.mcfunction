#call to update (rValue zombie_rngV) with a new random number
#Use scoreboard players operation rValue zombie_rngV %= C_1000 zombie_rngC to get a random value from 0-999
scoreboard players add RNGseed zombie_rngV 1
execute store result score rValue zombie_rngV run time query gametime
scoreboard players operation rValue zombie_rngV *= RNGseed zombie_rngV
scoreboard players operation rValue zombie_rngV *= C_314159 zombie_rngC
scoreboard players operation rValue zombie_rngV *= C_2718281 zombie_rngC
scoreboard players operation rValue zombie_rngV /= C_1000 zombie_rngC
scoreboard players operation rValue zombie_rngV *= C_314159 zombie_rngC
scoreboard players operation rValue zombie_rngV *= C_2718281 zombie_rngC
return 1