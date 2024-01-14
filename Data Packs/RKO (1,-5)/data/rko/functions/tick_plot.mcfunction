# This function will run every tick while players are in your plot on the center block at Y=0
# 65672 0 -440 #

function rko:loop/world
execute as @a[tag=pr.target,sort=arbitrary] run function rko:loop/player
execute as @e[type=minecraft:item_display,tag=pr.target,sort=arbitrary] at @s run function rko:loop/item_display
execute as @e[type=minecraft:armor_stand,tag=pr.target,sort=arbitrary] at @s run function rko:loop/am
execute as @e[type=minecraft:shulker,tag=pr.target,sort=arbitrary] at @s run function rko:loop/shulker

kill @e[type=minecraft:item,tag=pr.target,sort=arbitrary]
return 1