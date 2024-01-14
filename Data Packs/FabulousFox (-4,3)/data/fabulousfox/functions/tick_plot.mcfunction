# This function will run every tick while players are in your plot on the center block at Y=0
execute as @e[type=minecraft:armor_stand,distance=..300,tag=fabulousfox_platform_move,tag=pr.target] at @s rotated as @s run function fabulousfox:platform/tick
return 1