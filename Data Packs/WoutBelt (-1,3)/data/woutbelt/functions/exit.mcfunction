#######
# Compiled from data/woutbelt/functions/exit.mcscript
# to .//woutbelt/data/woutbelt/functions/exit.mcfunction
#
# Generated by Minecraft Script for 1.16
######
tag @s remove cooldown
tag @s remove woutbelt_blue
tag @s remove woutbelt_red
scoreboard players reset @s woutbelt_timer
return 1