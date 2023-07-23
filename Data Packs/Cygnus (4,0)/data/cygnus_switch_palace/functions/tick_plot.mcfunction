# This function will run every tick while players are in your plot on the center block at Y=0

execute as @a[tag=pr.target] at @s if score @s cygnus_jump matches 1.. run function cygnus_switch_palace:switch/jump
execute as @a[tag=pr.target] at @s if block ~ ~ ~ light[level=0] run function cygnus_switch_palace:cp0respawn
execute as @a[tag=pr.target] at @s if block ~ ~ ~ structure_void run function cygnus_switch_palace:cp1respawn