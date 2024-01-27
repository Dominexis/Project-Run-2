#This function will run every tick while players are in your plot on the center block at Y=0
execute as @a[tag=technodono_plot.is_in_plot,tag=pr.target] if score @s technodono_plot.jump_counter matches 40.. run scoreboard players set @s technodono_plot.jump_counter 0
execute as @a[tag=technodono_plot.playing,tag=pr.target] at @s unless predicate technodono_plot_-2_-3:in_air unless score @s technodono_plot.r-click_counter matches 0 run scoreboard players set @s technodono_plot.r-click_counter 0
execute as @a[tag=technodono_plot.playing,tag=pr.target] at @s if score @s technodono_plot.r-click_counter matches 1 if predicate technodono_plot_-2_-3:in_air run function technodono_plot_-2_-3:movement/double_jump
execute as @a[tag=technodono_plot.playing,tag=pr.target] if score @s technodono_plot.r-click_counter matches 0 run item replace entity @s weapon.offhand with minecraft:carrot_on_a_stick{CustomModelData:102031,display:{Name:'[{"text":"Double Jump","italic":false,"color":"aqua","type":"text"}]'}}
item replace entity @a[tag=technodono_plot.playing,tag=!technodono_plot.build,tag=pr.target] weapon.mainhand with minecraft:air
execute as @a[tag=technodono_plot.is_in_plot,tag=technodono_plot.playing,tag=pr.target] run function technodono_plot_-2_-3:gui/4_beat_jumpbar
#tag @s add technodono_plot.playing


#stop jumping
effect give @a[tag=technodono_plot.playing,tag=pr.target] minecraft:jump_boost 999999 128 true
#/tag Technodono add technodono_plot.build

#function every tick for keeping BPM
function technodono_plot_-2_-3:timer/120bpm

#tick delay for jump-cancelling
execute as @a[tag=technodono_plot.jump_delay,tag=pr.target] at @s run function technodono_plot_-2_-3:movement/jump_cancel
execute as @a[tag=technodono_plot.single_jump,tag=pr.target] run tag @s add technodono_plot.jump
execute as @a[tag=technodono_plot.double_jump,tag=pr.target] run tag @s add technodono_plot.jump
execute as @a[tag=technodono_plot.jump,tag=pr.target] run tag @s add technodono_plot.jump_delay

#music timers
scoreboard players add @a[tag=technodono_plot.playing,tag=pr.target] technodono_plot.music_timer 1
execute as @a[tag=technodono_plot.playing,tag=pr.target] at @s if score @s technodono_plot.music_timer matches 3840.. run function technodono_plot_-2_-3:events/restart_music

#kill functions
execute as @a[tag=technodono_plot.playing,tag=pr.target] at @s if predicate technodono_plot_-2_-3:touching_dripstone run function technodono_plot_-2_-3:events/deaths/spike_kill

execute as @a[tag=technodono_plot.playing,tag=pr.target] at @s if predicate technodono_plot_-2_-3:touching_water run function technodono_plot_-2_-3:events/deaths/water_kill

# start & end games
execute positioned ~11 ~24 ~0 as @a[distance=..1,tag=technodono_plot.is_in_plot,tag=!technodono_plot.ready,tag=pr.target] run function technodono_plot_-2_-3:start
execute positioned ~20 ~-49 ~14 as @a[distance=..1,tag=technodono_plot.is_in_plot,tag=!technodono_plot.ready,tag=pr.target] run function technodono_plot_-2_-3:end



scoreboard players add @e[type=minecraft:boat,tag=pr.target] technodono_plot.gneric_timer 1
kill @e[type=minecraft:boat,tag=pr.target,scores={technodono_plot.gneric_timer=10..}]
return 1