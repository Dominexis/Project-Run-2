# This function runs as and at all players that exit your plot
# Use this to remove any scores/tags/effects/items from the player
tag @s remove technodono_plot.is_in_plot
tag @s remove technodono_plot.beat_bounce
tag @s remove pr.plate_checkpoint

scoreboard players set @s technodono_plot.jump_counter -1
scoreboard players set @s technodono_plot.music_timer 0
tag @s remove technodono_plot.playing
tag @s remove technodono_plot.end
tag @s remove pr.hide_timer
effect clear @s
clear @s minecraft:carrot_on_a_stick

stopsound @s record beat_bounce:music.club_mix