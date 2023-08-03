# This function runs as and at all players that enter your plot
tag @s add technodono_plot.beat_bounce
scoreboard players set @s technodono_plot.jump_counter -1
scoreboard players set @s technodono_plot.jump_cooldown 0
scoreboard players set @s technodono_plot.music_timer 0
scoreboard players set @s technodono_plot.gneric_timer 0
scoreboard players set @s technodono_plot.r-click_counter 0
tag @s add technodono_plot.is_in_plot