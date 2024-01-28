# This function will run when the plot turns on, which is when players enter your plot after it was empty
# It will run in your plot on the center block at Y=0
# Use this to prepare your plot for players

scoreboard objectives add uk_value dummy
scoreboard objectives add uk_code dummy
scoreboard objectives add uk_kill minecraft.killed:minecraft.pillager

scoreboard players set #input pr.value 3
function pr:generic/rng/lcg
scoreboard players operation #pillager_spot uk_value = #output pr.value

return 1