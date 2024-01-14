summon minecraft:boat ~ ~-0.57 ~ {Tags:["technodono_plot.object.boat"],Type:"acacia",Invulnerable:1b,NoGravity:1b}
summon minecraft:boat ~ ~-1 ~ {Tags:["technodono_plot.object.boat"],Type:"acacia",Invulnerable:1b,NoGravity:1b}
particle minecraft:cloud ~ ~ ~ 0.5 0 0.5 0 10 normal @s
tag @s add technodono_plot.single_jump
#schedule function technodono_plot_-2_-3:movement/jump_cancel 1t append
#playsound minecraft:entity.ghast.shoot player @s ~ ~ ~ 0.3 0.8
#playsound minecraft:block.note_block.snare master @s ~ ~ ~ 1 1
return 1