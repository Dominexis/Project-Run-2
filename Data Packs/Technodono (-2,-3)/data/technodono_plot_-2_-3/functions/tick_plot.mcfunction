# This function will run every tick while players are in your plot on the center block at Y=0

execute as @a[tag=technodono_plot.is_in_plot] if score @s technodono_plot.jump_counter matches 40.. run scoreboard players set @s technodono_plot.jump_counter 0
execute as @a[tag=technodono_plot.playing] at @s unless predicate technodono_plot_-2_-3:in_air unless score @s technodono_plot.r-click_counter matches 0 run scoreboard players set @s technodono_plot.r-click_counter 0
execute as @a[tag=technodono_plot.playing] at @s if score @s technodono_plot.r-click_counter matches 1 if predicate technodono_plot_-2_-3:in_air run function technodono_plot_-2_-3:movement/double_jump
execute as @a[tag=technodono_plot.playing] if score @s technodono_plot.r-click_counter matches 0 run item replace entity @a weapon.offhand with minecraft:carrot_on_a_stick
item replace entity @a[tag=technodono_plot.playing,tag=!technodono_plot.build] weapon.mainhand with minecraft:air
execute as @a[tag=technodono_plot.is_in_plot,tag=technodono_plot.playing] run function technodono_plot_-2_-3:gui/4_beat_jumpbar
#tag @s add technodono_plot.playing


#stop jumping
effect give @a[tag=technodono_plot.playing] minecraft:jump_boost 999999 128 true
#/tag Technodono add technodono_plot.build

#function every tick for keeping BPM

function technodono_plot_-2_-3:timer/120bpm

#tick delay for jump-cancelling
execute as @a[tag=technodono_plot.jump] run function technodono_plot_-2_-3:movement/jump_cancel
execute as @a[tag=technodono_plot.single_jump] run tag @s add technodono_plot.jump
execute as @a[tag=technodono_plot.double_jump] run tag @s add technodono_plot.jump

#music timers
scoreboard players add @a[tag=technodono_plot.playing] technodono_plot.music_timer 1
execute as @a[tag=technodono_plot.playing] at @s if score @s technodono_plot.music_timer matches 3240.. run function technodono_plot_-2_-3:events/restart_music