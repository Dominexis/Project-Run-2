# This function runs as and at all players that enter your plot
tag @s add technodono_plot.beat_bounce
scoreboard players set @s technodono_plot.jump_counter -1
scoreboard players set @s technodono_plot.jump_cooldown 0
scoreboard players set @s technodono_plot.music_timer 0
scoreboard players set @s technodono_plot.gneric_timer 0
scoreboard players set @s technodono_plot.r-click_counter 0
tag @s add technodono_plot.is_in_plot
tag @s add pr.plate_checkpoint

tag @s remove technodono_plot.playing
tag @s remove technodono_plot.end
tag @s remove pr.hide_timer
effect clear @s
clear @s minecraft:carrot_on_a_stick

stopsound @s record beat_bounce:music.club_mix
return 1