# This function will run when the plot turns on, which is when players enter your plot after it was empty
# It will run in your plot on the center block at Y=0
# Use this to prepare your plot for players
scoreboard objectives add technodono_plot.gneric_timer dummy
scoreboard objectives add technodono_plot.music_timer dummy
scoreboard objectives add technodono_plot.jump_counter dummy
scoreboard objectives add technodono_plot.jump_cooldown dummy
scoreboard objectives add technodono_plot.r-click_counter minecraft.used:minecraft.carrot_on_a_stick


#enable schedules

return 1