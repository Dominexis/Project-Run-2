scoreboard players add @a[tag=technodono_plot.playing] technodono_plot.jump_counter 1
execute as @a[tag=technodono_plot.ready] at @s run function technodono_plot_-2_-3:events/start_game
execute as @a[tag=technodono_plot.playing] at @s run function technodono_plot_-2_-3:movement/attempt_jump