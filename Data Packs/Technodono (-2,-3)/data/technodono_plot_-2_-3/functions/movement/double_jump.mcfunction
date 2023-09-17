scoreboard players set @s technodono_plot.r-click_counter 2
clear @s minecraft:carrot_on_a_stick
summon minecraft:boat ~ ~-0.5 ~ {Tags:["technodono_plot.object.boat"],Type:"acacia",Invulnerable:1b,NoGravity:1b}
summon minecraft:boat ~ ~-1 ~ {Tags:["technodono_plot.object.boat"],Type:"acacia",Invulnerable:1b,NoGravity:1b}
effect give @s minecraft:levitation 1 75 true
playsound minecraft:entity.ghast.shoot player @s ~ ~ ~ 0.4 0.9
#playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1.2
particle minecraft:cloud ~ ~ ~ 0.5 0 0.5 0 10 normal @s
tag @s add technodono_plot.double_jump
#schedule function technodono_plot_-2_-3:movement/jump_cancel 2t append
