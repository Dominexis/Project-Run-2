# This function will run every tick while players are in your plot on the center block at Y=0

#execute as @a[tag=pr.target] at @s if score @s cygnus_jump matches 1.. run function cygnus_switch_palace:switch/jump
execute as @a[tag=pr.target] at @s if block ~ ~ ~ minecraft:light[level=0] run function cygnus_switch_palace:cp0respawn
execute as @a[tag=pr.target] at @s if block ~ ~ ~ minecraft:structure_void run function cygnus_switch_palace:cp1respawn
execute as @a[tag=pr.target] at @s if block ~ ~ ~ minecraft:air run effect clear @s minecraft:slow_falling

scoreboard players add $cygnus_timer cygnus_data 1
execute if score $cygnus_timer cygnus_data matches 10 as @a[tag=pr.target] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 0.35 1
execute if score $cygnus_timer cygnus_data matches 20 as @a[tag=pr.target] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 0.35 1
execute if score $cygnus_timer cygnus_data matches 30 as @a[tag=pr.target] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 0.35 1
execute if score $cygnus_timer cygnus_data matches 40 as @a[tag=pr.target] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 0.35 2
execute if score $cygnus_timer cygnus_data matches 40.. run function cygnus_switch_palace:switch/jump
return 1