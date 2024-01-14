# This function will run when the plot turns on, which is when players enter your plot after it was empty
# It will run in your plot on the center block at Y=0
# Use this to prepare your plot for players

scoreboard objectives add uk_range_detect dummy
scoreboard objectives add uk_arrowCount dummy
scoreboard objectives add uk_bowCount dummy
scoreboard objectives add uk_targets dummy
scoreboard objectives add uk_kill minecraft.killed:minecraft.pillager

scoreboard players set uktargetHolder uk_targets 0

summon minecraft:marker ~ ~ ~ {Tags:["uk.particle","pr.target"]}
return 1