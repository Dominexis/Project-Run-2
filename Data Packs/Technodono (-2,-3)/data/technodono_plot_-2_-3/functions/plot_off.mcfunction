# This function will run when the plot turns off, which is when your plot becomes empty
# It will run in your plot on the center block at Y=0
# Use this to reset your plot and get rid of any laggy entities
scoreboard objectives remove technodono_plot.gneric_timer
scoreboard objectives remove technodono_plot.music_timer
scoreboard objectives remove technodono_plot.jump_counter
scoreboard objectives remove technodono_plot.jump_cooldown
scoreboard objectives remove technodono_plot.r-click_counter
return 1