scoreboard players add @a[tag=technodono_plot.playing,tag=pr.target] technodono_plot.jump_counter 1
execute as @a[tag=technodono_plot.ready,tag=pr.target] run function technodono_plot_-2_-3:events/start_game
execute as @a[tag=technodono_plot.end,tag=pr.target] run function technodono_plot_-2_-3:events/end_game
execute as @a[tag=technodono_plot.playing,tag=pr.target] at @s run function technodono_plot_-2_-3:movement/attempt_jump