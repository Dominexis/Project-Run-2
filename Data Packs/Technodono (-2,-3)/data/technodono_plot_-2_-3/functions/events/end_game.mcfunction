tp @s ~0 ~33 ~3
execute as @s at @s run function technodono_plot_-2_-3:movement/jump_cancel
scoreboard players set @s technodono_plot.jump_counter -1
scoreboard players set @s technodono_plot.music_timer 0
tag @s remove technodono_plot.playing
tag @s remove technodono_plot.end
tag @s remove pr.hide_timer
effect clear @s
clear @s minecraft:carrot_on_a_stick

stopsound @s record beat_bounce:music.club_mix