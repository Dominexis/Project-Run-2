tp @s ~36 ~-50 ~0
scoreboard players set @s technodono_plot.jump_counter 1
tag @s remove technodono_plot.ready
tag @s add technodono_plot.playing
tag @s add pr.hide_timer
execute as @s at @s run playsound beat_bounce:music.club_mix record @s ~ ~ ~ 100
