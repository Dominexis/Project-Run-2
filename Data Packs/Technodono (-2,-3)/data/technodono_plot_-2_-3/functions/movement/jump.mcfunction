tp @s @s
tp @s @s
tp @s @s
tp @s @s
effect give @a[tag=pr.target,tag=technodono_plot.playing] minecraft:levitation 1 75 true
particle minecraft:cloud ~ ~ ~ 0.5 0 0.5 0 10 normal @s
tag @s add technodono_plot.single_jump
#schedule function technodono_plot_-2_-3:movement/jump_cancel 1t append
#playsound minecraft:entity.ghast.shoot player @s ~ ~ ~ 0.3 0.8
#playsound minecraft:block.note_block.snare master @s ~ ~ ~ 1 1