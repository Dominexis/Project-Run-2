# This function will run when the plot turns off, which is when your plot becomes empty
# It will run in your plot on the center block at Y=0
# Use this to reset your plot and get rid of any laggy entities
execute at @e[type=minecraft:armor_stand,tag=aljaza.snake] run setblock ~ ~1 ~ minecraft:air
kill @e[type=minecraft:armor_stand,tag=aljaza.snake]

kill @e[type=minecraft:item,tag=pr.target]
return 1