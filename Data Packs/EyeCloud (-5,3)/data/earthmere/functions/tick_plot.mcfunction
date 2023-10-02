# This function will run every tick while players are in your plot on the center block at Y=0
# 65096 0 328 #

function earthmere:loop/world
execute as @a[tag=pr.target,sort=arbitrary] run function earthmere:loop/player

kill @e[tag=pr.target,type=minecraft:item,sort=arbitrary]