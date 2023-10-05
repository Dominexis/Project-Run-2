# This function will run every tick while players are in your plot on the center block at Y=0
# 65096 0 328 #

execute positioned ~26 ~-4 ~-6 run effect give @a[distance=..16,tag=pr.target] resistance 10 5 true

function earthmere:loop/world
execute as @a[tag=pr.target,sort=arbitrary] run function earthmere:loop/player

kill @e[tag=pr.target,type=minecraft:item,sort=arbitrary]