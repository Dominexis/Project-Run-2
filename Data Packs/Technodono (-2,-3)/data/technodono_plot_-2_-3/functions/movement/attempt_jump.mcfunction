execute if score @s technodono_plot.jump_counter matches ..1 unless predicate technodono_plot_-2_-3:touching_glue run function technodono_plot_-2_-3:movement/jump
execute if score @s technodono_plot.jump_counter matches ..1 if predicate technodono_plot_-2_-3:touching_glue run playsound minecraft:block.honey_block.fall block @s ~ ~ ~ 1 2
execute if score @s technodono_plot.jump_counter matches ..1 if predicate technodono_plot_-2_-3:touching_glue run playsound minecraft:entity.player.attack.crit block @s ~ ~ ~ 1 2
return 1