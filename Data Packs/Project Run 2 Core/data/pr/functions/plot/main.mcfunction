# Tick plots

execute store result score #plot_player_-2_-6 pr.value positioned -200.0 -64 -584.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_-2_-6 pr.value = #plot_tick_-2_-6 pr.value positioned -200.0 -64 -584.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_-2_-6 pr.value matches 1 if score #plot_tick_-2_-6 pr.value matches 0 positioned -152 0 -536 run function namespace:plot_on
#execute if score #plot_player_-2_-6 pr.value matches 0 if score #plot_tick_-2_-6 pr.value matches 1 positioned -152 0 -536 run function namespace:plot_off
#execute unless score #plot_player_-2_-6 pr.value = #plot_tick_-2_-6 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_-2_-6 pr.value = #plot_player_-2_-6 pr.value
execute if score #plot_tick_-2_-6 pr.value matches 1 positioned -196.0 -64 -580.0 run scoreboard players set @a[dx=91,dy=383,dz=91,tag=!pr.spectator] pr.plot 654
#execute if score #plot_tick_-2_-6 pr.value matches 1 positioned -200.0 -64 -584.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_-2_-6 pr.value matches 1 positioned -152 0 -536 run function namespace:tick_plot
#execute if score #plot_tick_-2_-6 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_2_-6 pr.value positioned 184.0 -64 -584.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_2_-6 pr.value = #plot_tick_2_-6 pr.value positioned 184.0 -64 -584.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_2_-6 pr.value matches 1 if score #plot_tick_2_-6 pr.value matches 0 positioned 232 0 -536 run function namespace:plot_on
#execute if score #plot_player_2_-6 pr.value matches 0 if score #plot_tick_2_-6 pr.value matches 1 positioned 232 0 -536 run function namespace:plot_off
#execute unless score #plot_player_2_-6 pr.value = #plot_tick_2_-6 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_2_-6 pr.value = #plot_player_2_-6 pr.value
execute if score #plot_tick_2_-6 pr.value matches 1 positioned 188.0 -64 -580.0 run scoreboard players set @a[dx=91,dy=383,dz=91,tag=!pr.spectator] pr.plot 658
#execute if score #plot_tick_2_-6 pr.value matches 1 positioned 184.0 -64 -584.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_2_-6 pr.value matches 1 positioned 232 0 -536 run function namespace:tick_plot
#execute if score #plot_tick_2_-6 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_-3_-5 pr.value positioned -296.0 -64 -488.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_-3_-5 pr.value = #plot_tick_-3_-5 pr.value positioned -296.0 -64 -488.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_-3_-5 pr.value matches 1 if score #plot_tick_-3_-5 pr.value matches 0 positioned -248 0 -440 run function namespace:plot_on
#execute if score #plot_player_-3_-5 pr.value matches 0 if score #plot_tick_-3_-5 pr.value matches 1 positioned -248 0 -440 run function namespace:plot_off
#execute unless score #plot_player_-3_-5 pr.value = #plot_tick_-3_-5 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_-3_-5 pr.value = #plot_player_-3_-5 pr.value
execute if score #plot_tick_-3_-5 pr.value matches 1 positioned -292.0 -64 -484.0 run scoreboard players set @a[dx=91,dy=383,dz=91,tag=!pr.spectator] pr.plot 717
#execute if score #plot_tick_-3_-5 pr.value matches 1 positioned -296.0 -64 -488.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_-3_-5 pr.value matches 1 positioned -248 0 -440 run function namespace:tick_plot
#execute if score #plot_tick_-3_-5 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_-2_-5 pr.value positioned -200.0 -64 -488.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_-2_-5 pr.value = #plot_tick_-2_-5 pr.value positioned -200.0 -64 -488.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_-2_-5 pr.value matches 1 if score #plot_tick_-2_-5 pr.value matches 0 positioned -152 0 -440 run function namespace:plot_on
#execute if score #plot_player_-2_-5 pr.value matches 0 if score #plot_tick_-2_-5 pr.value matches 1 positioned -152 0 -440 run function namespace:plot_off
#execute unless score #plot_player_-2_-5 pr.value = #plot_tick_-2_-5 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_-2_-5 pr.value = #plot_player_-2_-5 pr.value
execute if score #plot_tick_-2_-5 pr.value matches 1 positioned -196.0 -64 -484.0 run scoreboard players set @a[dx=91,dy=383,dz=91,tag=!pr.spectator] pr.plot 718
#execute if score #plot_tick_-2_-5 pr.value matches 1 positioned -200.0 -64 -488.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_-2_-5 pr.value matches 1 positioned -152 0 -440 run function namespace:tick_plot
#execute if score #plot_tick_-2_-5 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_-1_-5 pr.value positioned -104.0 -64 -488.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_-1_-5 pr.value = #plot_tick_-1_-5 pr.value positioned -104.0 -64 -488.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_-1_-5 pr.value matches 1 if score #plot_tick_-1_-5 pr.value matches 0 positioned -56 0 -440 run function namespace:plot_on
#execute if score #plot_player_-1_-5 pr.value matches 0 if score #plot_tick_-1_-5 pr.value matches 1 positioned -56 0 -440 run function namespace:plot_off
#execute unless score #plot_player_-1_-5 pr.value = #plot_tick_-1_-5 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_-1_-5 pr.value = #plot_player_-1_-5 pr.value
execute if score #plot_tick_-1_-5 pr.value matches 1 positioned -100.0 -64 -484.0 run scoreboard players set @a[dx=91,dy=383,dz=91,tag=!pr.spectator] pr.plot 719
#execute if score #plot_tick_-1_-5 pr.value matches 1 positioned -104.0 -64 -488.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_-1_-5 pr.value matches 1 positioned -56 0 -440 run function namespace:tick_plot
#execute if score #plot_tick_-1_-5 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_1_-5 pr.value positioned 88.0 -64 -488.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_1_-5 pr.value = #plot_tick_1_-5 pr.value positioned 88.0 -64 -488.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_1_-5 pr.value matches 1 if score #plot_tick_1_-5 pr.value matches 0 positioned 136 0 -440 run function namespace:plot_on
#execute if score #plot_player_1_-5 pr.value matches 0 if score #plot_tick_1_-5 pr.value matches 1 positioned 136 0 -440 run function namespace:plot_off
#execute unless score #plot_player_1_-5 pr.value = #plot_tick_1_-5 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_1_-5 pr.value = #plot_player_1_-5 pr.value
execute if score #plot_tick_1_-5 pr.value matches 1 positioned 92.0 -64 -484.0 run scoreboard players set @a[dx=91,dy=383,dz=91,tag=!pr.spectator] pr.plot 721
#execute if score #plot_tick_1_-5 pr.value matches 1 positioned 88.0 -64 -488.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_1_-5 pr.value matches 1 positioned 136 0 -440 run function namespace:tick_plot
#execute if score #plot_tick_1_-5 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_2_-5 pr.value positioned 184.0 -64 -488.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_2_-5 pr.value = #plot_tick_2_-5 pr.value positioned 184.0 -64 -488.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_2_-5 pr.value matches 1 if score #plot_tick_2_-5 pr.value matches 0 positioned 232 0 -440 run function namespace:plot_on
#execute if score #plot_player_2_-5 pr.value matches 0 if score #plot_tick_2_-5 pr.value matches 1 positioned 232 0 -440 run function namespace:plot_off
#execute unless score #plot_player_2_-5 pr.value = #plot_tick_2_-5 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_2_-5 pr.value = #plot_player_2_-5 pr.value
execute if score #plot_tick_2_-5 pr.value matches 1 positioned 188.0 -64 -484.0 run scoreboard players set @a[dx=91,dy=383,dz=91,tag=!pr.spectator] pr.plot 722
#execute if score #plot_tick_2_-5 pr.value matches 1 positioned 184.0 -64 -488.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_2_-5 pr.value matches 1 positioned 232 0 -440 run function namespace:tick_plot
#execute if score #plot_tick_2_-5 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_3_-5 pr.value positioned 280.0 -64 -488.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_3_-5 pr.value = #plot_tick_3_-5 pr.value positioned 280.0 -64 -488.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_3_-5 pr.value matches 1 if score #plot_tick_3_-5 pr.value matches 0 positioned 328 0 -440 run function namespace:plot_on
#execute if score #plot_player_3_-5 pr.value matches 0 if score #plot_tick_3_-5 pr.value matches 1 positioned 328 0 -440 run function namespace:plot_off
#execute unless score #plot_player_3_-5 pr.value = #plot_tick_3_-5 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_3_-5 pr.value = #plot_player_3_-5 pr.value
execute if score #plot_tick_3_-5 pr.value matches 1 positioned 284.0 -64 -484.0 run scoreboard players set @a[dx=91,dy=383,dz=91,tag=!pr.spectator] pr.plot 723
#execute if score #plot_tick_3_-5 pr.value matches 1 positioned 280.0 -64 -488.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_3_-5 pr.value matches 1 positioned 328 0 -440 run function namespace:tick_plot
#execute if score #plot_tick_3_-5 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_-3_-4 pr.value positioned -296.0 -64 -392.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_-3_-4 pr.value = #plot_tick_-3_-4 pr.value positioned -296.0 -64 -392.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_-3_-4 pr.value matches 1 if score #plot_tick_-3_-4 pr.value matches 0 positioned -248 0 -344 run function namespace:plot_on
#execute if score #plot_player_-3_-4 pr.value matches 0 if score #plot_tick_-3_-4 pr.value matches 1 positioned -248 0 -344 run function namespace:plot_off
#execute unless score #plot_player_-3_-4 pr.value = #plot_tick_-3_-4 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_-3_-4 pr.value = #plot_player_-3_-4 pr.value
execute if score #plot_tick_-3_-4 pr.value matches 1 positioned -292.0 -64 -388.0 run scoreboard players set @a[dx=91,dy=383,dz=91,tag=!pr.spectator] pr.plot 781
#execute if score #plot_tick_-3_-4 pr.value matches 1 positioned -296.0 -64 -392.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_-3_-4 pr.value matches 1 positioned -248 0 -344 run function namespace:tick_plot
#execute if score #plot_tick_-3_-4 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_-2_-4 pr.value positioned -200.0 -64 -392.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_-2_-4 pr.value = #plot_tick_-2_-4 pr.value positioned -200.0 -64 -392.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_-2_-4 pr.value matches 1 if score #plot_tick_-2_-4 pr.value matches 0 positioned -152 0 -344 run function namespace:plot_on
#execute if score #plot_player_-2_-4 pr.value matches 0 if score #plot_tick_-2_-4 pr.value matches 1 positioned -152 0 -344 run function namespace:plot_off
#execute unless score #plot_player_-2_-4 pr.value = #plot_tick_-2_-4 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_-2_-4 pr.value = #plot_player_-2_-4 pr.value
execute if score #plot_tick_-2_-4 pr.value matches 1 positioned -196.0 -64 -388.0 run scoreboard players set @a[dx=91,dy=383,dz=91,tag=!pr.spectator] pr.plot 782
#execute if score #plot_tick_-2_-4 pr.value matches 1 positioned -200.0 -64 -392.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_-2_-4 pr.value matches 1 positioned -152 0 -344 run function namespace:tick_plot
#execute if score #plot_tick_-2_-4 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_-1_-4 pr.value positioned -104.0 -64 -392.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_-1_-4 pr.value = #plot_tick_-1_-4 pr.value positioned -104.0 -64 -392.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_-1_-4 pr.value matches 1 if score #plot_tick_-1_-4 pr.value matches 0 positioned -56 0 -344 run function namespace:plot_on
#execute if score #plot_player_-1_-4 pr.value matches 0 if score #plot_tick_-1_-4 pr.value matches 1 positioned -56 0 -344 run function namespace:plot_off
#execute unless score #plot_player_-1_-4 pr.value = #plot_tick_-1_-4 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_-1_-4 pr.value = #plot_player_-1_-4 pr.value
execute if score #plot_tick_-1_-4 pr.value matches 1 positioned -100.0 -64 -388.0 run scoreboard players set @a[dx=91,dy=383,dz=91,tag=!pr.spectator] pr.plot 783
#execute if score #plot_tick_-1_-4 pr.value matches 1 positioned -104.0 -64 -392.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_-1_-4 pr.value matches 1 positioned -56 0 -344 run function namespace:tick_plot
#execute if score #plot_tick_-1_-4 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_0_-4 pr.value positioned -8.0 -64 -392.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_0_-4 pr.value = #plot_tick_0_-4 pr.value positioned -8.0 -64 -392.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_0_-4 pr.value matches 1 if score #plot_tick_0_-4 pr.value matches 0 positioned 40 0 -344 run function namespace:plot_on
#execute if score #plot_player_0_-4 pr.value matches 0 if score #plot_tick_0_-4 pr.value matches 1 positioned 40 0 -344 run function namespace:plot_off
#execute unless score #plot_player_0_-4 pr.value = #plot_tick_0_-4 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_0_-4 pr.value = #plot_player_0_-4 pr.value
execute if score #plot_tick_0_-4 pr.value matches 1 positioned -4.0 -64 -388.0 run scoreboard players set @a[dx=91,dy=383,dz=91,tag=!pr.spectator] pr.plot 784
#execute if score #plot_tick_0_-4 pr.value matches 1 positioned -8.0 -64 -392.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_0_-4 pr.value matches 1 positioned 40 0 -344 run function namespace:tick_plot
#execute if score #plot_tick_0_-4 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_1_-4 pr.value positioned 88.0 -64 -392.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_1_-4 pr.value = #plot_tick_1_-4 pr.value positioned 88.0 -64 -392.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_1_-4 pr.value matches 1 if score #plot_tick_1_-4 pr.value matches 0 positioned 136 0 -344 run function namespace:plot_on
#execute if score #plot_player_1_-4 pr.value matches 0 if score #plot_tick_1_-4 pr.value matches 1 positioned 136 0 -344 run function namespace:plot_off
#execute unless score #plot_player_1_-4 pr.value = #plot_tick_1_-4 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_1_-4 pr.value = #plot_player_1_-4 pr.value
execute if score #plot_tick_1_-4 pr.value matches 1 positioned 92.0 -64 -388.0 run scoreboard players set @a[dx=91,dy=383,dz=91,tag=!pr.spectator] pr.plot 785
#execute if score #plot_tick_1_-4 pr.value matches 1 positioned 88.0 -64 -392.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_1_-4 pr.value matches 1 positioned 136 0 -344 run function namespace:tick_plot
#execute if score #plot_tick_1_-4 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_2_-4 pr.value positioned 184.0 -64 -392.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_2_-4 pr.value = #plot_tick_2_-4 pr.value positioned 184.0 -64 -392.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_2_-4 pr.value matches 1 if score #plot_tick_2_-4 pr.value matches 0 positioned 232 0 -344 run function namespace:plot_on
#execute if score #plot_player_2_-4 pr.value matches 0 if score #plot_tick_2_-4 pr.value matches 1 positioned 232 0 -344 run function namespace:plot_off
#execute unless score #plot_player_2_-4 pr.value = #plot_tick_2_-4 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_2_-4 pr.value = #plot_player_2_-4 pr.value
execute if score #plot_tick_2_-4 pr.value matches 1 positioned 188.0 -64 -388.0 run scoreboard players set @a[dx=91,dy=383,dz=91,tag=!pr.spectator] pr.plot 786
#execute if score #plot_tick_2_-4 pr.value matches 1 positioned 184.0 -64 -392.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_2_-4 pr.value matches 1 positioned 232 0 -344 run function namespace:tick_plot
#execute if score #plot_tick_2_-4 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_3_-4 pr.value positioned 280.0 -64 -392.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_3_-4 pr.value = #plot_tick_3_-4 pr.value positioned 280.0 -64 -392.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_3_-4 pr.value matches 1 if score #plot_tick_3_-4 pr.value matches 0 positioned 328 0 -344 run function namespace:plot_on
#execute if score #plot_player_3_-4 pr.value matches 0 if score #plot_tick_3_-4 pr.value matches 1 positioned 328 0 -344 run function namespace:plot_off
#execute unless score #plot_player_3_-4 pr.value = #plot_tick_3_-4 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_3_-4 pr.value = #plot_player_3_-4 pr.value
execute if score #plot_tick_3_-4 pr.value matches 1 positioned 284.0 -64 -388.0 run scoreboard players set @a[dx=91,dy=383,dz=91,tag=!pr.spectator] pr.plot 787
#execute if score #plot_tick_3_-4 pr.value matches 1 positioned 280.0 -64 -392.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_3_-4 pr.value matches 1 positioned 328 0 -344 run function namespace:tick_plot
#execute if score #plot_tick_3_-4 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_-5_-3 pr.value positioned -488.0 -64 -296.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_-5_-3 pr.value = #plot_tick_-5_-3 pr.value positioned -488.0 -64 -296.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_-5_-3 pr.value matches 1 if score #plot_tick_-5_-3 pr.value matches 0 positioned -440 0 -248 run function namespace:plot_on
#execute if score #plot_player_-5_-3 pr.value matches 0 if score #plot_tick_-5_-3 pr.value matches 1 positioned -440 0 -248 run function namespace:plot_off
#execute unless score #plot_player_-5_-3 pr.value = #plot_tick_-5_-3 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_-5_-3 pr.value = #plot_player_-5_-3 pr.value
execute if score #plot_tick_-5_-3 pr.value matches 1 positioned -484.0 -64 -292.0 run scoreboard players set @a[dx=91,dy=383,dz=91,tag=!pr.spectator] pr.plot 843
#execute if score #plot_tick_-5_-3 pr.value matches 1 positioned -488.0 -64 -296.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_-5_-3 pr.value matches 1 positioned -440 0 -248 run function namespace:tick_plot
#execute if score #plot_tick_-5_-3 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_-4_-3 pr.value positioned -392.0 -64 -296.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_-4_-3 pr.value = #plot_tick_-4_-3 pr.value positioned -392.0 -64 -296.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_-4_-3 pr.value matches 1 if score #plot_tick_-4_-3 pr.value matches 0 positioned -344 0 -248 run function namespace:plot_on
#execute if score #plot_player_-4_-3 pr.value matches 0 if score #plot_tick_-4_-3 pr.value matches 1 positioned -344 0 -248 run function namespace:plot_off
#execute unless score #plot_player_-4_-3 pr.value = #plot_tick_-4_-3 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_-4_-3 pr.value = #plot_player_-4_-3 pr.value
execute if score #plot_tick_-4_-3 pr.value matches 1 positioned -388.0 -64 -292.0 run scoreboard players set @a[dx=91,dy=383,dz=91,tag=!pr.spectator] pr.plot 844
#execute if score #plot_tick_-4_-3 pr.value matches 1 positioned -392.0 -64 -296.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_-4_-3 pr.value matches 1 positioned -344 0 -248 run function namespace:tick_plot
#execute if score #plot_tick_-4_-3 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_-2_-3 pr.value positioned -200.0 -64 -296.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_-2_-3 pr.value = #plot_tick_-2_-3 pr.value positioned -200.0 -64 -296.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_-2_-3 pr.value matches 1 if score #plot_tick_-2_-3 pr.value matches 0 positioned -152 0 -248 run function namespace:plot_on
#execute if score #plot_player_-2_-3 pr.value matches 0 if score #plot_tick_-2_-3 pr.value matches 1 positioned -152 0 -248 run function namespace:plot_off
#execute unless score #plot_player_-2_-3 pr.value = #plot_tick_-2_-3 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_-2_-3 pr.value = #plot_player_-2_-3 pr.value
execute if score #plot_tick_-2_-3 pr.value matches 1 positioned -196.0 -64 -292.0 run scoreboard players set @a[dx=91,dy=383,dz=91,tag=!pr.spectator] pr.plot 846
#execute if score #plot_tick_-2_-3 pr.value matches 1 positioned -200.0 -64 -296.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_-2_-3 pr.value matches 1 positioned -152 0 -248 run function namespace:tick_plot
#execute if score #plot_tick_-2_-3 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_-1_-3 pr.value positioned -104.0 -64 -296.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
execute unless score #plot_player_-1_-3 pr.value = #plot_tick_-1_-3 pr.value positioned -104.0 -64 -296.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
execute if score #plot_player_-1_-3 pr.value matches 1 if score #plot_tick_-1_-3 pr.value matches 0 positioned -56 0 -248 run function itspungpond98:plot_on
execute if score #plot_player_-1_-3 pr.value matches 0 if score #plot_tick_-1_-3 pr.value matches 1 positioned -56 0 -248 run function itspungpond98:plot_off
execute unless score #plot_player_-1_-3 pr.value = #plot_tick_-1_-3 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_-1_-3 pr.value = #plot_player_-1_-3 pr.value
execute if score #plot_tick_-1_-3 pr.value matches 1 positioned -100.0 -64 -292.0 run scoreboard players set @a[dx=91,dy=383,dz=91,tag=!pr.spectator] pr.plot 847
execute if score #plot_tick_-1_-3 pr.value matches 1 positioned -104.0 -64 -296.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
execute if score #plot_tick_-1_-3 pr.value matches 1 positioned -56 0 -248 run function itspungpond98:tick_plot
execute if score #plot_tick_-1_-3 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_0_-3 pr.value positioned -8.0 -64 -296.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_0_-3 pr.value = #plot_tick_0_-3 pr.value positioned -8.0 -64 -296.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_0_-3 pr.value matches 1 if score #plot_tick_0_-3 pr.value matches 0 positioned 40 0 -248 run function namespace:plot_on
#execute if score #plot_player_0_-3 pr.value matches 0 if score #plot_tick_0_-3 pr.value matches 1 positioned 40 0 -248 run function namespace:plot_off
#execute unless score #plot_player_0_-3 pr.value = #plot_tick_0_-3 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_0_-3 pr.value = #plot_player_0_-3 pr.value
execute if score #plot_tick_0_-3 pr.value matches 1 positioned -4.0 -64 -292.0 run scoreboard players set @a[dx=91,dy=383,dz=91,tag=!pr.spectator] pr.plot 848
#execute if score #plot_tick_0_-3 pr.value matches 1 positioned -8.0 -64 -296.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_0_-3 pr.value matches 1 positioned 40 0 -248 run function namespace:tick_plot
#execute if score #plot_tick_0_-3 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_1_-3 pr.value positioned 88.0 -64 -296.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_1_-3 pr.value = #plot_tick_1_-3 pr.value positioned 88.0 -64 -296.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_1_-3 pr.value matches 1 if score #plot_tick_1_-3 pr.value matches 0 positioned 136 0 -248 run function namespace:plot_on
#execute if score #plot_player_1_-3 pr.value matches 0 if score #plot_tick_1_-3 pr.value matches 1 positioned 136 0 -248 run function namespace:plot_off
#execute unless score #plot_player_1_-3 pr.value = #plot_tick_1_-3 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_1_-3 pr.value = #plot_player_1_-3 pr.value
execute if score #plot_tick_1_-3 pr.value matches 1 positioned 92.0 -64 -292.0 run scoreboard players set @a[dx=91,dy=383,dz=91,tag=!pr.spectator] pr.plot 849
#execute if score #plot_tick_1_-3 pr.value matches 1 positioned 88.0 -64 -296.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_1_-3 pr.value matches 1 positioned 136 0 -248 run function namespace:tick_plot
#execute if score #plot_tick_1_-3 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_2_-3 pr.value positioned 184.0 -64 -296.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_2_-3 pr.value = #plot_tick_2_-3 pr.value positioned 184.0 -64 -296.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_2_-3 pr.value matches 1 if score #plot_tick_2_-3 pr.value matches 0 positioned 232 0 -248 run function namespace:plot_on
#execute if score #plot_player_2_-3 pr.value matches 0 if score #plot_tick_2_-3 pr.value matches 1 positioned 232 0 -248 run function namespace:plot_off
#execute unless score #plot_player_2_-3 pr.value = #plot_tick_2_-3 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_2_-3 pr.value = #plot_player_2_-3 pr.value
execute if score #plot_tick_2_-3 pr.value matches 1 positioned 188.0 -64 -292.0 run scoreboard players set @a[dx=91,dy=383,dz=91,tag=!pr.spectator] pr.plot 850
#execute if score #plot_tick_2_-3 pr.value matches 1 positioned 184.0 -64 -296.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_2_-3 pr.value matches 1 positioned 232 0 -248 run function namespace:tick_plot
#execute if score #plot_tick_2_-3 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_4_-3 pr.value positioned 376.0 -64 -296.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_4_-3 pr.value = #plot_tick_4_-3 pr.value positioned 376.0 -64 -296.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_4_-3 pr.value matches 1 if score #plot_tick_4_-3 pr.value matches 0 positioned 424 0 -248 run function namespace:plot_on
#execute if score #plot_player_4_-3 pr.value matches 0 if score #plot_tick_4_-3 pr.value matches 1 positioned 424 0 -248 run function namespace:plot_off
#execute unless score #plot_player_4_-3 pr.value = #plot_tick_4_-3 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_4_-3 pr.value = #plot_player_4_-3 pr.value
execute if score #plot_tick_4_-3 pr.value matches 1 positioned 380.0 -64 -292.0 run scoreboard players set @a[dx=91,dy=383,dz=91,tag=!pr.spectator] pr.plot 852
#execute if score #plot_tick_4_-3 pr.value matches 1 positioned 376.0 -64 -296.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_4_-3 pr.value matches 1 positioned 424 0 -248 run function namespace:tick_plot
#execute if score #plot_tick_4_-3 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_5_-3 pr.value positioned 472.0 -64 -296.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_5_-3 pr.value = #plot_tick_5_-3 pr.value positioned 472.0 -64 -296.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_5_-3 pr.value matches 1 if score #plot_tick_5_-3 pr.value matches 0 positioned 520 0 -248 run function namespace:plot_on
#execute if score #plot_player_5_-3 pr.value matches 0 if score #plot_tick_5_-3 pr.value matches 1 positioned 520 0 -248 run function namespace:plot_off
#execute unless score #plot_player_5_-3 pr.value = #plot_tick_5_-3 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_5_-3 pr.value = #plot_player_5_-3 pr.value
execute if score #plot_tick_5_-3 pr.value matches 1 positioned 476.0 -64 -292.0 run scoreboard players set @a[dx=91,dy=383,dz=91,tag=!pr.spectator] pr.plot 853
#execute if score #plot_tick_5_-3 pr.value matches 1 positioned 472.0 -64 -296.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_5_-3 pr.value matches 1 positioned 520 0 -248 run function namespace:tick_plot
#execute if score #plot_tick_5_-3 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_-6_-2 pr.value positioned -584.0 -64 -200.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_-6_-2 pr.value = #plot_tick_-6_-2 pr.value positioned -584.0 -64 -200.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_-6_-2 pr.value matches 1 if score #plot_tick_-6_-2 pr.value matches 0 positioned -536 0 -152 run function namespace:plot_on
#execute if score #plot_player_-6_-2 pr.value matches 0 if score #plot_tick_-6_-2 pr.value matches 1 positioned -536 0 -152 run function namespace:plot_off
#execute unless score #plot_player_-6_-2 pr.value = #plot_tick_-6_-2 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_-6_-2 pr.value = #plot_player_-6_-2 pr.value
execute if score #plot_tick_-6_-2 pr.value matches 1 positioned -580.0 -64 -196.0 run scoreboard players set @a[dx=91,dy=383,dz=91,tag=!pr.spectator] pr.plot 906
#execute if score #plot_tick_-6_-2 pr.value matches 1 positioned -584.0 -64 -200.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_-6_-2 pr.value matches 1 positioned -536 0 -152 run function namespace:tick_plot
#execute if score #plot_tick_-6_-2 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_-5_-2 pr.value positioned -488.0 -64 -200.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_-5_-2 pr.value = #plot_tick_-5_-2 pr.value positioned -488.0 -64 -200.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_-5_-2 pr.value matches 1 if score #plot_tick_-5_-2 pr.value matches 0 positioned -440 0 -152 run function namespace:plot_on
#execute if score #plot_player_-5_-2 pr.value matches 0 if score #plot_tick_-5_-2 pr.value matches 1 positioned -440 0 -152 run function namespace:plot_off
#execute unless score #plot_player_-5_-2 pr.value = #plot_tick_-5_-2 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_-5_-2 pr.value = #plot_player_-5_-2 pr.value
execute if score #plot_tick_-5_-2 pr.value matches 1 positioned -484.0 -64 -196.0 run scoreboard players set @a[dx=91,dy=383,dz=91,tag=!pr.spectator] pr.plot 907
#execute if score #plot_tick_-5_-2 pr.value matches 1 positioned -488.0 -64 -200.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_-5_-2 pr.value matches 1 positioned -440 0 -152 run function namespace:tick_plot
#execute if score #plot_tick_-5_-2 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_-4_-2 pr.value positioned -392.0 -64 -200.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_-4_-2 pr.value = #plot_tick_-4_-2 pr.value positioned -392.0 -64 -200.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_-4_-2 pr.value matches 1 if score #plot_tick_-4_-2 pr.value matches 0 positioned -344 0 -152 run function namespace:plot_on
#execute if score #plot_player_-4_-2 pr.value matches 0 if score #plot_tick_-4_-2 pr.value matches 1 positioned -344 0 -152 run function namespace:plot_off
#execute unless score #plot_player_-4_-2 pr.value = #plot_tick_-4_-2 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_-4_-2 pr.value = #plot_player_-4_-2 pr.value
execute if score #plot_tick_-4_-2 pr.value matches 1 positioned -388.0 -64 -196.0 run scoreboard players set @a[dx=91,dy=383,dz=91,tag=!pr.spectator] pr.plot 908
#execute if score #plot_tick_-4_-2 pr.value matches 1 positioned -392.0 -64 -200.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_-4_-2 pr.value matches 1 positioned -344 0 -152 run function namespace:tick_plot
#execute if score #plot_tick_-4_-2 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_-3_-2 pr.value positioned -296.0 -64 -200.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_-3_-2 pr.value = #plot_tick_-3_-2 pr.value positioned -296.0 -64 -200.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_-3_-2 pr.value matches 1 if score #plot_tick_-3_-2 pr.value matches 0 positioned -248 0 -152 run function namespace:plot_on
#execute if score #plot_player_-3_-2 pr.value matches 0 if score #plot_tick_-3_-2 pr.value matches 1 positioned -248 0 -152 run function namespace:plot_off
#execute unless score #plot_player_-3_-2 pr.value = #plot_tick_-3_-2 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_-3_-2 pr.value = #plot_player_-3_-2 pr.value
execute if score #plot_tick_-3_-2 pr.value matches 1 positioned -292.0 -64 -196.0 run scoreboard players set @a[dx=91,dy=383,dz=91,tag=!pr.spectator] pr.plot 909
#execute if score #plot_tick_-3_-2 pr.value matches 1 positioned -296.0 -64 -200.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_-3_-2 pr.value matches 1 positioned -248 0 -152 run function namespace:tick_plot
#execute if score #plot_tick_-3_-2 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_-1_-2 pr.value positioned -104.0 -64 -200.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_-1_-2 pr.value = #plot_tick_-1_-2 pr.value positioned -104.0 -64 -200.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_-1_-2 pr.value matches 1 if score #plot_tick_-1_-2 pr.value matches 0 positioned -56 0 -152 run function namespace:plot_on
#execute if score #plot_player_-1_-2 pr.value matches 0 if score #plot_tick_-1_-2 pr.value matches 1 positioned -56 0 -152 run function namespace:plot_off
#execute unless score #plot_player_-1_-2 pr.value = #plot_tick_-1_-2 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_-1_-2 pr.value = #plot_player_-1_-2 pr.value
execute if score #plot_tick_-1_-2 pr.value matches 1 positioned -100.0 -64 -196.0 run scoreboard players set @a[dx=91,dy=383,dz=91,tag=!pr.spectator] pr.plot 911
#execute if score #plot_tick_-1_-2 pr.value matches 1 positioned -104.0 -64 -200.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_-1_-2 pr.value matches 1 positioned -56 0 -152 run function namespace:tick_plot
#execute if score #plot_tick_-1_-2 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_1_-2 pr.value positioned 88.0 -64 -200.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_1_-2 pr.value = #plot_tick_1_-2 pr.value positioned 88.0 -64 -200.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_1_-2 pr.value matches 1 if score #plot_tick_1_-2 pr.value matches 0 positioned 136 0 -152 run function namespace:plot_on
#execute if score #plot_player_1_-2 pr.value matches 0 if score #plot_tick_1_-2 pr.value matches 1 positioned 136 0 -152 run function namespace:plot_off
#execute unless score #plot_player_1_-2 pr.value = #plot_tick_1_-2 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_1_-2 pr.value = #plot_player_1_-2 pr.value
execute if score #plot_tick_1_-2 pr.value matches 1 positioned 92.0 -64 -196.0 run scoreboard players set @a[dx=91,dy=383,dz=91,tag=!pr.spectator] pr.plot 913
#execute if score #plot_tick_1_-2 pr.value matches 1 positioned 88.0 -64 -200.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_1_-2 pr.value matches 1 positioned 136 0 -152 run function namespace:tick_plot
#execute if score #plot_tick_1_-2 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_3_-2 pr.value positioned 280.0 -64 -200.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_3_-2 pr.value = #plot_tick_3_-2 pr.value positioned 280.0 -64 -200.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_3_-2 pr.value matches 1 if score #plot_tick_3_-2 pr.value matches 0 positioned 328 0 -152 run function namespace:plot_on
#execute if score #plot_player_3_-2 pr.value matches 0 if score #plot_tick_3_-2 pr.value matches 1 positioned 328 0 -152 run function namespace:plot_off
#execute unless score #plot_player_3_-2 pr.value = #plot_tick_3_-2 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_3_-2 pr.value = #plot_player_3_-2 pr.value
execute if score #plot_tick_3_-2 pr.value matches 1 positioned 284.0 -64 -196.0 run scoreboard players set @a[dx=91,dy=383,dz=91,tag=!pr.spectator] pr.plot 915
#execute if score #plot_tick_3_-2 pr.value matches 1 positioned 280.0 -64 -200.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_3_-2 pr.value matches 1 positioned 328 0 -152 run function namespace:tick_plot
#execute if score #plot_tick_3_-2 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_4_-2 pr.value positioned 376.0 -64 -200.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_4_-2 pr.value = #plot_tick_4_-2 pr.value positioned 376.0 -64 -200.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_4_-2 pr.value matches 1 if score #plot_tick_4_-2 pr.value matches 0 positioned 424 0 -152 run function namespace:plot_on
#execute if score #plot_player_4_-2 pr.value matches 0 if score #plot_tick_4_-2 pr.value matches 1 positioned 424 0 -152 run function namespace:plot_off
#execute unless score #plot_player_4_-2 pr.value = #plot_tick_4_-2 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_4_-2 pr.value = #plot_player_4_-2 pr.value
execute if score #plot_tick_4_-2 pr.value matches 1 positioned 380.0 -64 -196.0 run scoreboard players set @a[dx=91,dy=383,dz=91,tag=!pr.spectator] pr.plot 916
#execute if score #plot_tick_4_-2 pr.value matches 1 positioned 376.0 -64 -200.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_4_-2 pr.value matches 1 positioned 424 0 -152 run function namespace:tick_plot
#execute if score #plot_tick_4_-2 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_5_-2 pr.value positioned 472.0 -64 -200.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_5_-2 pr.value = #plot_tick_5_-2 pr.value positioned 472.0 -64 -200.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_5_-2 pr.value matches 1 if score #plot_tick_5_-2 pr.value matches 0 positioned 520 0 -152 run function namespace:plot_on
#execute if score #plot_player_5_-2 pr.value matches 0 if score #plot_tick_5_-2 pr.value matches 1 positioned 520 0 -152 run function namespace:plot_off
#execute unless score #plot_player_5_-2 pr.value = #plot_tick_5_-2 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_5_-2 pr.value = #plot_player_5_-2 pr.value
execute if score #plot_tick_5_-2 pr.value matches 1 positioned 476.0 -64 -196.0 run scoreboard players set @a[dx=91,dy=383,dz=91,tag=!pr.spectator] pr.plot 917
#execute if score #plot_tick_5_-2 pr.value matches 1 positioned 472.0 -64 -200.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_5_-2 pr.value matches 1 positioned 520 0 -152 run function namespace:tick_plot
#execute if score #plot_tick_5_-2 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_6_-2 pr.value positioned 568.0 -64 -200.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_6_-2 pr.value = #plot_tick_6_-2 pr.value positioned 568.0 -64 -200.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_6_-2 pr.value matches 1 if score #plot_tick_6_-2 pr.value matches 0 positioned 616 0 -152 run function namespace:plot_on
#execute if score #plot_player_6_-2 pr.value matches 0 if score #plot_tick_6_-2 pr.value matches 1 positioned 616 0 -152 run function namespace:plot_off
#execute unless score #plot_player_6_-2 pr.value = #plot_tick_6_-2 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_6_-2 pr.value = #plot_player_6_-2 pr.value
execute if score #plot_tick_6_-2 pr.value matches 1 positioned 572.0 -64 -196.0 run scoreboard players set @a[dx=91,dy=383,dz=91,tag=!pr.spectator] pr.plot 918
#execute if score #plot_tick_6_-2 pr.value matches 1 positioned 568.0 -64 -200.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_6_-2 pr.value matches 1 positioned 616 0 -152 run function namespace:tick_plot
#execute if score #plot_tick_6_-2 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_-5_-1 pr.value positioned -488.0 -64 -104.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_-5_-1 pr.value = #plot_tick_-5_-1 pr.value positioned -488.0 -64 -104.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_-5_-1 pr.value matches 1 if score #plot_tick_-5_-1 pr.value matches 0 positioned -440 0 -56 run function namespace:plot_on
#execute if score #plot_player_-5_-1 pr.value matches 0 if score #plot_tick_-5_-1 pr.value matches 1 positioned -440 0 -56 run function namespace:plot_off
#execute unless score #plot_player_-5_-1 pr.value = #plot_tick_-5_-1 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_-5_-1 pr.value = #plot_player_-5_-1 pr.value
execute if score #plot_tick_-5_-1 pr.value matches 1 positioned -484.0 -64 -100.0 run scoreboard players set @a[dx=91,dy=383,dz=91,tag=!pr.spectator] pr.plot 971
#execute if score #plot_tick_-5_-1 pr.value matches 1 positioned -488.0 -64 -104.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_-5_-1 pr.value matches 1 positioned -440 0 -56 run function namespace:tick_plot
#execute if score #plot_tick_-5_-1 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_-4_-1 pr.value positioned -392.0 -64 -104.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_-4_-1 pr.value = #plot_tick_-4_-1 pr.value positioned -392.0 -64 -104.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_-4_-1 pr.value matches 1 if score #plot_tick_-4_-1 pr.value matches 0 positioned -344 0 -56 run function namespace:plot_on
#execute if score #plot_player_-4_-1 pr.value matches 0 if score #plot_tick_-4_-1 pr.value matches 1 positioned -344 0 -56 run function namespace:plot_off
#execute unless score #plot_player_-4_-1 pr.value = #plot_tick_-4_-1 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_-4_-1 pr.value = #plot_player_-4_-1 pr.value
execute if score #plot_tick_-4_-1 pr.value matches 1 positioned -388.0 -64 -100.0 run scoreboard players set @a[dx=91,dy=383,dz=91,tag=!pr.spectator] pr.plot 972
#execute if score #plot_tick_-4_-1 pr.value matches 1 positioned -392.0 -64 -104.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_-4_-1 pr.value matches 1 positioned -344 0 -56 run function namespace:tick_plot
#execute if score #plot_tick_-4_-1 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_-3_-1 pr.value positioned -296.0 -64 -104.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_-3_-1 pr.value = #plot_tick_-3_-1 pr.value positioned -296.0 -64 -104.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_-3_-1 pr.value matches 1 if score #plot_tick_-3_-1 pr.value matches 0 positioned -248 0 -56 run function namespace:plot_on
#execute if score #plot_player_-3_-1 pr.value matches 0 if score #plot_tick_-3_-1 pr.value matches 1 positioned -248 0 -56 run function namespace:plot_off
#execute unless score #plot_player_-3_-1 pr.value = #plot_tick_-3_-1 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_-3_-1 pr.value = #plot_player_-3_-1 pr.value
execute if score #plot_tick_-3_-1 pr.value matches 1 positioned -292.0 -64 -100.0 run scoreboard players set @a[dx=91,dy=383,dz=91,tag=!pr.spectator] pr.plot 973
#execute if score #plot_tick_-3_-1 pr.value matches 1 positioned -296.0 -64 -104.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_-3_-1 pr.value matches 1 positioned -248 0 -56 run function namespace:tick_plot
#execute if score #plot_tick_-3_-1 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_-2_-1 pr.value positioned -200.0 -64 -104.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_-2_-1 pr.value = #plot_tick_-2_-1 pr.value positioned -200.0 -64 -104.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_-2_-1 pr.value matches 1 if score #plot_tick_-2_-1 pr.value matches 0 positioned -152 0 -56 run function namespace:plot_on
#execute if score #plot_player_-2_-1 pr.value matches 0 if score #plot_tick_-2_-1 pr.value matches 1 positioned -152 0 -56 run function namespace:plot_off
#execute unless score #plot_player_-2_-1 pr.value = #plot_tick_-2_-1 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_-2_-1 pr.value = #plot_player_-2_-1 pr.value
execute if score #plot_tick_-2_-1 pr.value matches 1 positioned -196.0 -64 -100.0 run scoreboard players set @a[dx=91,dy=383,dz=91,tag=!pr.spectator] pr.plot 974
#execute if score #plot_tick_-2_-1 pr.value matches 1 positioned -200.0 -64 -104.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_-2_-1 pr.value matches 1 positioned -152 0 -56 run function namespace:tick_plot
#execute if score #plot_tick_-2_-1 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_-1_-1 pr.value positioned -104.0 -64 -104.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_-1_-1 pr.value = #plot_tick_-1_-1 pr.value positioned -104.0 -64 -104.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_-1_-1 pr.value matches 1 if score #plot_tick_-1_-1 pr.value matches 0 positioned -56 0 -56 run function namespace:plot_on
#execute if score #plot_player_-1_-1 pr.value matches 0 if score #plot_tick_-1_-1 pr.value matches 1 positioned -56 0 -56 run function namespace:plot_off
#execute unless score #plot_player_-1_-1 pr.value = #plot_tick_-1_-1 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_-1_-1 pr.value = #plot_player_-1_-1 pr.value
execute if score #plot_tick_-1_-1 pr.value matches 1 positioned -100.0 -64 -100.0 run scoreboard players set @a[dx=91,dy=383,dz=91,tag=!pr.spectator] pr.plot 975
#execute if score #plot_tick_-1_-1 pr.value matches 1 positioned -104.0 -64 -104.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_-1_-1 pr.value matches 1 positioned -56 0 -56 run function namespace:tick_plot
#execute if score #plot_tick_-1_-1 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_0_-1 pr.value positioned -8.0 -64 -104.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_0_-1 pr.value = #plot_tick_0_-1 pr.value positioned -8.0 -64 -104.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_0_-1 pr.value matches 1 if score #plot_tick_0_-1 pr.value matches 0 positioned 40 0 -56 run function namespace:plot_on
#execute if score #plot_player_0_-1 pr.value matches 0 if score #plot_tick_0_-1 pr.value matches 1 positioned 40 0 -56 run function namespace:plot_off
#execute unless score #plot_player_0_-1 pr.value = #plot_tick_0_-1 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_0_-1 pr.value = #plot_player_0_-1 pr.value
execute if score #plot_tick_0_-1 pr.value matches 1 positioned -4.0 -64 -100.0 run scoreboard players set @a[dx=91,dy=383,dz=91,tag=!pr.spectator] pr.plot 976
#execute if score #plot_tick_0_-1 pr.value matches 1 positioned -8.0 -64 -104.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_0_-1 pr.value matches 1 positioned 40 0 -56 run function namespace:tick_plot
#execute if score #plot_tick_0_-1 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_1_-1 pr.value positioned 88.0 -64 -104.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_1_-1 pr.value = #plot_tick_1_-1 pr.value positioned 88.0 -64 -104.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_1_-1 pr.value matches 1 if score #plot_tick_1_-1 pr.value matches 0 positioned 136 0 -56 run function namespace:plot_on
#execute if score #plot_player_1_-1 pr.value matches 0 if score #plot_tick_1_-1 pr.value matches 1 positioned 136 0 -56 run function namespace:plot_off
#execute unless score #plot_player_1_-1 pr.value = #plot_tick_1_-1 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_1_-1 pr.value = #plot_player_1_-1 pr.value
execute if score #plot_tick_1_-1 pr.value matches 1 positioned 92.0 -64 -100.0 run scoreboard players set @a[dx=91,dy=383,dz=91,tag=!pr.spectator] pr.plot 977
#execute if score #plot_tick_1_-1 pr.value matches 1 positioned 88.0 -64 -104.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_1_-1 pr.value matches 1 positioned 136 0 -56 run function namespace:tick_plot
#execute if score #plot_tick_1_-1 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_2_-1 pr.value positioned 184.0 -64 -104.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_2_-1 pr.value = #plot_tick_2_-1 pr.value positioned 184.0 -64 -104.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_2_-1 pr.value matches 1 if score #plot_tick_2_-1 pr.value matches 0 positioned 232 0 -56 run function namespace:plot_on
#execute if score #plot_player_2_-1 pr.value matches 0 if score #plot_tick_2_-1 pr.value matches 1 positioned 232 0 -56 run function namespace:plot_off
#execute unless score #plot_player_2_-1 pr.value = #plot_tick_2_-1 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_2_-1 pr.value = #plot_player_2_-1 pr.value
execute if score #plot_tick_2_-1 pr.value matches 1 positioned 188.0 -64 -100.0 run scoreboard players set @a[dx=91,dy=383,dz=91,tag=!pr.spectator] pr.plot 978
#execute if score #plot_tick_2_-1 pr.value matches 1 positioned 184.0 -64 -104.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_2_-1 pr.value matches 1 positioned 232 0 -56 run function namespace:tick_plot
#execute if score #plot_tick_2_-1 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_3_-1 pr.value positioned 280.0 -64 -104.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_3_-1 pr.value = #plot_tick_3_-1 pr.value positioned 280.0 -64 -104.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_3_-1 pr.value matches 1 if score #plot_tick_3_-1 pr.value matches 0 positioned 328 0 -56 run function namespace:plot_on
#execute if score #plot_player_3_-1 pr.value matches 0 if score #plot_tick_3_-1 pr.value matches 1 positioned 328 0 -56 run function namespace:plot_off
#execute unless score #plot_player_3_-1 pr.value = #plot_tick_3_-1 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_3_-1 pr.value = #plot_player_3_-1 pr.value
execute if score #plot_tick_3_-1 pr.value matches 1 positioned 284.0 -64 -100.0 run scoreboard players set @a[dx=91,dy=383,dz=91,tag=!pr.spectator] pr.plot 979
#execute if score #plot_tick_3_-1 pr.value matches 1 positioned 280.0 -64 -104.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_3_-1 pr.value matches 1 positioned 328 0 -56 run function namespace:tick_plot
#execute if score #plot_tick_3_-1 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_4_-1 pr.value positioned 376.0 -64 -104.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_4_-1 pr.value = #plot_tick_4_-1 pr.value positioned 376.0 -64 -104.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_4_-1 pr.value matches 1 if score #plot_tick_4_-1 pr.value matches 0 positioned 424 0 -56 run function namespace:plot_on
#execute if score #plot_player_4_-1 pr.value matches 0 if score #plot_tick_4_-1 pr.value matches 1 positioned 424 0 -56 run function namespace:plot_off
#execute unless score #plot_player_4_-1 pr.value = #plot_tick_4_-1 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_4_-1 pr.value = #plot_player_4_-1 pr.value
execute if score #plot_tick_4_-1 pr.value matches 1 positioned 380.0 -64 -100.0 run scoreboard players set @a[dx=91,dy=383,dz=91,tag=!pr.spectator] pr.plot 980
#execute if score #plot_tick_4_-1 pr.value matches 1 positioned 376.0 -64 -104.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_4_-1 pr.value matches 1 positioned 424 0 -56 run function namespace:tick_plot
#execute if score #plot_tick_4_-1 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_5_-1 pr.value positioned 472.0 -64 -104.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_5_-1 pr.value = #plot_tick_5_-1 pr.value positioned 472.0 -64 -104.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_5_-1 pr.value matches 1 if score #plot_tick_5_-1 pr.value matches 0 positioned 520 0 -56 run function namespace:plot_on
#execute if score #plot_player_5_-1 pr.value matches 0 if score #plot_tick_5_-1 pr.value matches 1 positioned 520 0 -56 run function namespace:plot_off
#execute unless score #plot_player_5_-1 pr.value = #plot_tick_5_-1 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_5_-1 pr.value = #plot_player_5_-1 pr.value
execute if score #plot_tick_5_-1 pr.value matches 1 positioned 476.0 -64 -100.0 run scoreboard players set @a[dx=91,dy=383,dz=91,tag=!pr.spectator] pr.plot 981
#execute if score #plot_tick_5_-1 pr.value matches 1 positioned 472.0 -64 -104.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_5_-1 pr.value matches 1 positioned 520 0 -56 run function namespace:tick_plot
#execute if score #plot_tick_5_-1 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_-4_0 pr.value positioned -392.0 -64 -8.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_-4_0 pr.value = #plot_tick_-4_0 pr.value positioned -392.0 -64 -8.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_-4_0 pr.value matches 1 if score #plot_tick_-4_0 pr.value matches 0 positioned -344 0 40 run function namespace:plot_on
#execute if score #plot_player_-4_0 pr.value matches 0 if score #plot_tick_-4_0 pr.value matches 1 positioned -344 0 40 run function namespace:plot_off
#execute unless score #plot_player_-4_0 pr.value = #plot_tick_-4_0 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_-4_0 pr.value = #plot_player_-4_0 pr.value
execute if score #plot_tick_-4_0 pr.value matches 1 positioned -388.0 -64 -4.0 run scoreboard players set @a[dx=91,dy=383,dz=91,tag=!pr.spectator] pr.plot 1036
#execute if score #plot_tick_-4_0 pr.value matches 1 positioned -392.0 -64 -8.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_-4_0 pr.value matches 1 positioned -344 0 40 run function namespace:tick_plot
#execute if score #plot_tick_-4_0 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_-3_0 pr.value positioned -296.0 -64 -8.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_-3_0 pr.value = #plot_tick_-3_0 pr.value positioned -296.0 -64 -8.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_-3_0 pr.value matches 1 if score #plot_tick_-3_0 pr.value matches 0 positioned -248 0 40 run function namespace:plot_on
#execute if score #plot_player_-3_0 pr.value matches 0 if score #plot_tick_-3_0 pr.value matches 1 positioned -248 0 40 run function namespace:plot_off
#execute unless score #plot_player_-3_0 pr.value = #plot_tick_-3_0 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_-3_0 pr.value = #plot_player_-3_0 pr.value
execute if score #plot_tick_-3_0 pr.value matches 1 positioned -292.0 -64 -4.0 run scoreboard players set @a[dx=91,dy=383,dz=91,tag=!pr.spectator] pr.plot 1037
#execute if score #plot_tick_-3_0 pr.value matches 1 positioned -296.0 -64 -8.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_-3_0 pr.value matches 1 positioned -248 0 40 run function namespace:tick_plot
#execute if score #plot_tick_-3_0 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_-1_0 pr.value positioned -104.0 -64 -8.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_-1_0 pr.value = #plot_tick_-1_0 pr.value positioned -104.0 -64 -8.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_-1_0 pr.value matches 1 if score #plot_tick_-1_0 pr.value matches 0 positioned -56 0 40 run function namespace:plot_on
#execute if score #plot_player_-1_0 pr.value matches 0 if score #plot_tick_-1_0 pr.value matches 1 positioned -56 0 40 run function namespace:plot_off
#execute unless score #plot_player_-1_0 pr.value = #plot_tick_-1_0 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_-1_0 pr.value = #plot_player_-1_0 pr.value
execute if score #plot_tick_-1_0 pr.value matches 1 positioned -100.0 -64 -4.0 run scoreboard players set @a[dx=91,dy=383,dz=91,tag=!pr.spectator] pr.plot 1039
#execute if score #plot_tick_-1_0 pr.value matches 1 positioned -104.0 -64 -8.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_-1_0 pr.value matches 1 positioned -56 0 40 run function namespace:tick_plot
#execute if score #plot_tick_-1_0 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_0_0 pr.value positioned -8.0 -64 -8.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_0_0 pr.value = #plot_tick_0_0 pr.value positioned -8.0 -64 -8.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_0_0 pr.value matches 1 if score #plot_tick_0_0 pr.value matches 0 positioned 40 0 40 run function namespace:plot_on
#execute if score #plot_player_0_0 pr.value matches 0 if score #plot_tick_0_0 pr.value matches 1 positioned 40 0 40 run function namespace:plot_off
#execute unless score #plot_player_0_0 pr.value = #plot_tick_0_0 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_0_0 pr.value = #plot_player_0_0 pr.value
execute if score #plot_tick_0_0 pr.value matches 1 positioned -4.0 -64 -4.0 run scoreboard players set @a[dx=91,dy=383,dz=91,tag=!pr.spectator] pr.plot 1040
#execute if score #plot_tick_0_0 pr.value matches 1 positioned -8.0 -64 -8.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_0_0 pr.value matches 1 positioned 40 0 40 run function namespace:tick_plot
#execute if score #plot_tick_0_0 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_3_0 pr.value positioned 280.0 -64 -8.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_3_0 pr.value = #plot_tick_3_0 pr.value positioned 280.0 -64 -8.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_3_0 pr.value matches 1 if score #plot_tick_3_0 pr.value matches 0 positioned 328 0 40 run function namespace:plot_on
#execute if score #plot_player_3_0 pr.value matches 0 if score #plot_tick_3_0 pr.value matches 1 positioned 328 0 40 run function namespace:plot_off
#execute unless score #plot_player_3_0 pr.value = #plot_tick_3_0 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_3_0 pr.value = #plot_player_3_0 pr.value
execute if score #plot_tick_3_0 pr.value matches 1 positioned 284.0 -64 -4.0 run scoreboard players set @a[dx=91,dy=383,dz=91,tag=!pr.spectator] pr.plot 1043
#execute if score #plot_tick_3_0 pr.value matches 1 positioned 280.0 -64 -8.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_3_0 pr.value matches 1 positioned 328 0 40 run function namespace:tick_plot
#execute if score #plot_tick_3_0 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_4_0 pr.value positioned 376.0 -64 -8.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_4_0 pr.value = #plot_tick_4_0 pr.value positioned 376.0 -64 -8.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_4_0 pr.value matches 1 if score #plot_tick_4_0 pr.value matches 0 positioned 424 0 40 run function namespace:plot_on
#execute if score #plot_player_4_0 pr.value matches 0 if score #plot_tick_4_0 pr.value matches 1 positioned 424 0 40 run function namespace:plot_off
#execute unless score #plot_player_4_0 pr.value = #plot_tick_4_0 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_4_0 pr.value = #plot_player_4_0 pr.value
execute if score #plot_tick_4_0 pr.value matches 1 positioned 380.0 -64 -4.0 run scoreboard players set @a[dx=91,dy=383,dz=91,tag=!pr.spectator] pr.plot 1044
#execute if score #plot_tick_4_0 pr.value matches 1 positioned 376.0 -64 -8.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_4_0 pr.value matches 1 positioned 424 0 40 run function namespace:tick_plot
#execute if score #plot_tick_4_0 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_-5_1 pr.value positioned -488.0 -64 88.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_-5_1 pr.value = #plot_tick_-5_1 pr.value positioned -488.0 -64 88.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_-5_1 pr.value matches 1 if score #plot_tick_-5_1 pr.value matches 0 positioned -440 0 136 run function namespace:plot_on
#execute if score #plot_player_-5_1 pr.value matches 0 if score #plot_tick_-5_1 pr.value matches 1 positioned -440 0 136 run function namespace:plot_off
#execute unless score #plot_player_-5_1 pr.value = #plot_tick_-5_1 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_-5_1 pr.value = #plot_player_-5_1 pr.value
execute if score #plot_tick_-5_1 pr.value matches 1 positioned -484.0 -64 92.0 run scoreboard players set @a[dx=91,dy=383,dz=91,tag=!pr.spectator] pr.plot 1099
#execute if score #plot_tick_-5_1 pr.value matches 1 positioned -488.0 -64 88.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_-5_1 pr.value matches 1 positioned -440 0 136 run function namespace:tick_plot
#execute if score #plot_tick_-5_1 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_-4_1 pr.value positioned -392.0 -64 88.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_-4_1 pr.value = #plot_tick_-4_1 pr.value positioned -392.0 -64 88.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_-4_1 pr.value matches 1 if score #plot_tick_-4_1 pr.value matches 0 positioned -344 0 136 run function namespace:plot_on
#execute if score #plot_player_-4_1 pr.value matches 0 if score #plot_tick_-4_1 pr.value matches 1 positioned -344 0 136 run function namespace:plot_off
#execute unless score #plot_player_-4_1 pr.value = #plot_tick_-4_1 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_-4_1 pr.value = #plot_player_-4_1 pr.value
execute if score #plot_tick_-4_1 pr.value matches 1 positioned -388.0 -64 92.0 run scoreboard players set @a[dx=91,dy=383,dz=91,tag=!pr.spectator] pr.plot 1100
#execute if score #plot_tick_-4_1 pr.value matches 1 positioned -392.0 -64 88.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_-4_1 pr.value matches 1 positioned -344 0 136 run function namespace:tick_plot
#execute if score #plot_tick_-4_1 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_-3_1 pr.value positioned -296.0 -64 88.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_-3_1 pr.value = #plot_tick_-3_1 pr.value positioned -296.0 -64 88.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_-3_1 pr.value matches 1 if score #plot_tick_-3_1 pr.value matches 0 positioned -248 0 136 run function namespace:plot_on
#execute if score #plot_player_-3_1 pr.value matches 0 if score #plot_tick_-3_1 pr.value matches 1 positioned -248 0 136 run function namespace:plot_off
#execute unless score #plot_player_-3_1 pr.value = #plot_tick_-3_1 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_-3_1 pr.value = #plot_player_-3_1 pr.value
execute if score #plot_tick_-3_1 pr.value matches 1 positioned -292.0 -64 92.0 run scoreboard players set @a[dx=91,dy=383,dz=91,tag=!pr.spectator] pr.plot 1101
#execute if score #plot_tick_-3_1 pr.value matches 1 positioned -296.0 -64 88.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_-3_1 pr.value matches 1 positioned -248 0 136 run function namespace:tick_plot
#execute if score #plot_tick_-3_1 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_-2_1 pr.value positioned -200.0 -64 88.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_-2_1 pr.value = #plot_tick_-2_1 pr.value positioned -200.0 -64 88.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_-2_1 pr.value matches 1 if score #plot_tick_-2_1 pr.value matches 0 positioned -152 0 136 run function namespace:plot_on
#execute if score #plot_player_-2_1 pr.value matches 0 if score #plot_tick_-2_1 pr.value matches 1 positioned -152 0 136 run function namespace:plot_off
#execute unless score #plot_player_-2_1 pr.value = #plot_tick_-2_1 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_-2_1 pr.value = #plot_player_-2_1 pr.value
execute if score #plot_tick_-2_1 pr.value matches 1 positioned -196.0 -64 92.0 run scoreboard players set @a[dx=91,dy=383,dz=91,tag=!pr.spectator] pr.plot 1102
#execute if score #plot_tick_-2_1 pr.value matches 1 positioned -200.0 -64 88.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_-2_1 pr.value matches 1 positioned -152 0 136 run function namespace:tick_plot
#execute if score #plot_tick_-2_1 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_-1_1 pr.value positioned -104.0 -64 88.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_-1_1 pr.value = #plot_tick_-1_1 pr.value positioned -104.0 -64 88.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_-1_1 pr.value matches 1 if score #plot_tick_-1_1 pr.value matches 0 positioned -56 0 136 run function namespace:plot_on
#execute if score #plot_player_-1_1 pr.value matches 0 if score #plot_tick_-1_1 pr.value matches 1 positioned -56 0 136 run function namespace:plot_off
#execute unless score #plot_player_-1_1 pr.value = #plot_tick_-1_1 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_-1_1 pr.value = #plot_player_-1_1 pr.value
execute if score #plot_tick_-1_1 pr.value matches 1 positioned -100.0 -64 92.0 run scoreboard players set @a[dx=91,dy=383,dz=91,tag=!pr.spectator] pr.plot 1103
#execute if score #plot_tick_-1_1 pr.value matches 1 positioned -104.0 -64 88.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_-1_1 pr.value matches 1 positioned -56 0 136 run function namespace:tick_plot
#execute if score #plot_tick_-1_1 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_0_1 pr.value positioned -8.0 -64 88.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_0_1 pr.value = #plot_tick_0_1 pr.value positioned -8.0 -64 88.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_0_1 pr.value matches 1 if score #plot_tick_0_1 pr.value matches 0 positioned 40 0 136 run function namespace:plot_on
#execute if score #plot_player_0_1 pr.value matches 0 if score #plot_tick_0_1 pr.value matches 1 positioned 40 0 136 run function namespace:plot_off
#execute unless score #plot_player_0_1 pr.value = #plot_tick_0_1 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_0_1 pr.value = #plot_player_0_1 pr.value
execute if score #plot_tick_0_1 pr.value matches 1 positioned -4.0 -64 92.0 run scoreboard players set @a[dx=91,dy=383,dz=91,tag=!pr.spectator] pr.plot 1104
#execute if score #plot_tick_0_1 pr.value matches 1 positioned -8.0 -64 88.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_0_1 pr.value matches 1 positioned 40 0 136 run function namespace:tick_plot
#execute if score #plot_tick_0_1 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_1_1 pr.value positioned 88.0 -64 88.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_1_1 pr.value = #plot_tick_1_1 pr.value positioned 88.0 -64 88.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_1_1 pr.value matches 1 if score #plot_tick_1_1 pr.value matches 0 positioned 136 0 136 run function namespace:plot_on
#execute if score #plot_player_1_1 pr.value matches 0 if score #plot_tick_1_1 pr.value matches 1 positioned 136 0 136 run function namespace:plot_off
#execute unless score #plot_player_1_1 pr.value = #plot_tick_1_1 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_1_1 pr.value = #plot_player_1_1 pr.value
execute if score #plot_tick_1_1 pr.value matches 1 positioned 92.0 -64 92.0 run scoreboard players set @a[dx=91,dy=383,dz=91,tag=!pr.spectator] pr.plot 1105
#execute if score #plot_tick_1_1 pr.value matches 1 positioned 88.0 -64 88.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_1_1 pr.value matches 1 positioned 136 0 136 run function namespace:tick_plot
#execute if score #plot_tick_1_1 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_2_1 pr.value positioned 184.0 -64 88.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_2_1 pr.value = #plot_tick_2_1 pr.value positioned 184.0 -64 88.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_2_1 pr.value matches 1 if score #plot_tick_2_1 pr.value matches 0 positioned 232 0 136 run function namespace:plot_on
#execute if score #plot_player_2_1 pr.value matches 0 if score #plot_tick_2_1 pr.value matches 1 positioned 232 0 136 run function namespace:plot_off
#execute unless score #plot_player_2_1 pr.value = #plot_tick_2_1 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_2_1 pr.value = #plot_player_2_1 pr.value
execute if score #plot_tick_2_1 pr.value matches 1 positioned 188.0 -64 92.0 run scoreboard players set @a[dx=91,dy=383,dz=91,tag=!pr.spectator] pr.plot 1106
#execute if score #plot_tick_2_1 pr.value matches 1 positioned 184.0 -64 88.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_2_1 pr.value matches 1 positioned 232 0 136 run function namespace:tick_plot
#execute if score #plot_tick_2_1 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_3_1 pr.value positioned 280.0 -64 88.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_3_1 pr.value = #plot_tick_3_1 pr.value positioned 280.0 -64 88.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_3_1 pr.value matches 1 if score #plot_tick_3_1 pr.value matches 0 positioned 328 0 136 run function namespace:plot_on
#execute if score #plot_player_3_1 pr.value matches 0 if score #plot_tick_3_1 pr.value matches 1 positioned 328 0 136 run function namespace:plot_off
#execute unless score #plot_player_3_1 pr.value = #plot_tick_3_1 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_3_1 pr.value = #plot_player_3_1 pr.value
execute if score #plot_tick_3_1 pr.value matches 1 positioned 284.0 -64 92.0 run scoreboard players set @a[dx=91,dy=383,dz=91,tag=!pr.spectator] pr.plot 1107
#execute if score #plot_tick_3_1 pr.value matches 1 positioned 280.0 -64 88.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_3_1 pr.value matches 1 positioned 328 0 136 run function namespace:tick_plot
#execute if score #plot_tick_3_1 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_4_1 pr.value positioned 376.0 -64 88.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_4_1 pr.value = #plot_tick_4_1 pr.value positioned 376.0 -64 88.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_4_1 pr.value matches 1 if score #plot_tick_4_1 pr.value matches 0 positioned 424 0 136 run function namespace:plot_on
#execute if score #plot_player_4_1 pr.value matches 0 if score #plot_tick_4_1 pr.value matches 1 positioned 424 0 136 run function namespace:plot_off
#execute unless score #plot_player_4_1 pr.value = #plot_tick_4_1 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_4_1 pr.value = #plot_player_4_1 pr.value
execute if score #plot_tick_4_1 pr.value matches 1 positioned 380.0 -64 92.0 run scoreboard players set @a[dx=91,dy=383,dz=91,tag=!pr.spectator] pr.plot 1108
#execute if score #plot_tick_4_1 pr.value matches 1 positioned 376.0 -64 88.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_4_1 pr.value matches 1 positioned 424 0 136 run function namespace:tick_plot
#execute if score #plot_tick_4_1 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_5_1 pr.value positioned 472.0 -64 88.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_5_1 pr.value = #plot_tick_5_1 pr.value positioned 472.0 -64 88.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_5_1 pr.value matches 1 if score #plot_tick_5_1 pr.value matches 0 positioned 520 0 136 run function namespace:plot_on
#execute if score #plot_player_5_1 pr.value matches 0 if score #plot_tick_5_1 pr.value matches 1 positioned 520 0 136 run function namespace:plot_off
#execute unless score #plot_player_5_1 pr.value = #plot_tick_5_1 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_5_1 pr.value = #plot_player_5_1 pr.value
execute if score #plot_tick_5_1 pr.value matches 1 positioned 476.0 -64 92.0 run scoreboard players set @a[dx=91,dy=383,dz=91,tag=!pr.spectator] pr.plot 1109
#execute if score #plot_tick_5_1 pr.value matches 1 positioned 472.0 -64 88.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_5_1 pr.value matches 1 positioned 520 0 136 run function namespace:tick_plot
#execute if score #plot_tick_5_1 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_-6_2 pr.value positioned -584.0 -64 184.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_-6_2 pr.value = #plot_tick_-6_2 pr.value positioned -584.0 -64 184.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_-6_2 pr.value matches 1 if score #plot_tick_-6_2 pr.value matches 0 positioned -536 0 232 run function namespace:plot_on
#execute if score #plot_player_-6_2 pr.value matches 0 if score #plot_tick_-6_2 pr.value matches 1 positioned -536 0 232 run function namespace:plot_off
#execute unless score #plot_player_-6_2 pr.value = #plot_tick_-6_2 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_-6_2 pr.value = #plot_player_-6_2 pr.value
execute if score #plot_tick_-6_2 pr.value matches 1 positioned -580.0 -64 188.0 run scoreboard players set @a[dx=91,dy=383,dz=91,tag=!pr.spectator] pr.plot 1162
#execute if score #plot_tick_-6_2 pr.value matches 1 positioned -584.0 -64 184.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_-6_2 pr.value matches 1 positioned -536 0 232 run function namespace:tick_plot
#execute if score #plot_tick_-6_2 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_-5_2 pr.value positioned -488.0 -64 184.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_-5_2 pr.value = #plot_tick_-5_2 pr.value positioned -488.0 -64 184.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_-5_2 pr.value matches 1 if score #plot_tick_-5_2 pr.value matches 0 positioned -440 0 232 run function namespace:plot_on
#execute if score #plot_player_-5_2 pr.value matches 0 if score #plot_tick_-5_2 pr.value matches 1 positioned -440 0 232 run function namespace:plot_off
#execute unless score #plot_player_-5_2 pr.value = #plot_tick_-5_2 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_-5_2 pr.value = #plot_player_-5_2 pr.value
execute if score #plot_tick_-5_2 pr.value matches 1 positioned -484.0 -64 188.0 run scoreboard players set @a[dx=91,dy=383,dz=91,tag=!pr.spectator] pr.plot 1163
#execute if score #plot_tick_-5_2 pr.value matches 1 positioned -488.0 -64 184.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_-5_2 pr.value matches 1 positioned -440 0 232 run function namespace:tick_plot
#execute if score #plot_tick_-5_2 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_-4_2 pr.value positioned -392.0 -64 184.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_-4_2 pr.value = #plot_tick_-4_2 pr.value positioned -392.0 -64 184.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_-4_2 pr.value matches 1 if score #plot_tick_-4_2 pr.value matches 0 positioned -344 0 232 run function namespace:plot_on
#execute if score #plot_player_-4_2 pr.value matches 0 if score #plot_tick_-4_2 pr.value matches 1 positioned -344 0 232 run function namespace:plot_off
#execute unless score #plot_player_-4_2 pr.value = #plot_tick_-4_2 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_-4_2 pr.value = #plot_player_-4_2 pr.value
execute if score #plot_tick_-4_2 pr.value matches 1 positioned -388.0 -64 188.0 run scoreboard players set @a[dx=91,dy=383,dz=91,tag=!pr.spectator] pr.plot 1164
#execute if score #plot_tick_-4_2 pr.value matches 1 positioned -392.0 -64 184.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_-4_2 pr.value matches 1 positioned -344 0 232 run function namespace:tick_plot
#execute if score #plot_tick_-4_2 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_-3_2 pr.value positioned -296.0 -64 184.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_-3_2 pr.value = #plot_tick_-3_2 pr.value positioned -296.0 -64 184.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_-3_2 pr.value matches 1 if score #plot_tick_-3_2 pr.value matches 0 positioned -248 0 232 run function namespace:plot_on
#execute if score #plot_player_-3_2 pr.value matches 0 if score #plot_tick_-3_2 pr.value matches 1 positioned -248 0 232 run function namespace:plot_off
#execute unless score #plot_player_-3_2 pr.value = #plot_tick_-3_2 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_-3_2 pr.value = #plot_player_-3_2 pr.value
execute if score #plot_tick_-3_2 pr.value matches 1 positioned -292.0 -64 188.0 run scoreboard players set @a[dx=91,dy=383,dz=91,tag=!pr.spectator] pr.plot 1165
#execute if score #plot_tick_-3_2 pr.value matches 1 positioned -296.0 -64 184.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_-3_2 pr.value matches 1 positioned -248 0 232 run function namespace:tick_plot
#execute if score #plot_tick_-3_2 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_-1_2 pr.value positioned -104.0 -64 184.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_-1_2 pr.value = #plot_tick_-1_2 pr.value positioned -104.0 -64 184.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_-1_2 pr.value matches 1 if score #plot_tick_-1_2 pr.value matches 0 positioned -56 0 232 run function namespace:plot_on
#execute if score #plot_player_-1_2 pr.value matches 0 if score #plot_tick_-1_2 pr.value matches 1 positioned -56 0 232 run function namespace:plot_off
#execute unless score #plot_player_-1_2 pr.value = #plot_tick_-1_2 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_-1_2 pr.value = #plot_player_-1_2 pr.value
execute if score #plot_tick_-1_2 pr.value matches 1 positioned -100.0 -64 188.0 run scoreboard players set @a[dx=91,dy=383,dz=91,tag=!pr.spectator] pr.plot 1167
#execute if score #plot_tick_-1_2 pr.value matches 1 positioned -104.0 -64 184.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_-1_2 pr.value matches 1 positioned -56 0 232 run function namespace:tick_plot
#execute if score #plot_tick_-1_2 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_1_2 pr.value positioned 88.0 -64 184.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_1_2 pr.value = #plot_tick_1_2 pr.value positioned 88.0 -64 184.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_1_2 pr.value matches 1 if score #plot_tick_1_2 pr.value matches 0 positioned 136 0 232 run function namespace:plot_on
#execute if score #plot_player_1_2 pr.value matches 0 if score #plot_tick_1_2 pr.value matches 1 positioned 136 0 232 run function namespace:plot_off
#execute unless score #plot_player_1_2 pr.value = #plot_tick_1_2 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_1_2 pr.value = #plot_player_1_2 pr.value
execute if score #plot_tick_1_2 pr.value matches 1 positioned 92.0 -64 188.0 run scoreboard players set @a[dx=91,dy=383,dz=91,tag=!pr.spectator] pr.plot 1169
#execute if score #plot_tick_1_2 pr.value matches 1 positioned 88.0 -64 184.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_1_2 pr.value matches 1 positioned 136 0 232 run function namespace:tick_plot
#execute if score #plot_tick_1_2 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_3_2 pr.value positioned 280.0 -64 184.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_3_2 pr.value = #plot_tick_3_2 pr.value positioned 280.0 -64 184.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_3_2 pr.value matches 1 if score #plot_tick_3_2 pr.value matches 0 positioned 328 0 232 run function namespace:plot_on
#execute if score #plot_player_3_2 pr.value matches 0 if score #plot_tick_3_2 pr.value matches 1 positioned 328 0 232 run function namespace:plot_off
#execute unless score #plot_player_3_2 pr.value = #plot_tick_3_2 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_3_2 pr.value = #plot_player_3_2 pr.value
execute if score #plot_tick_3_2 pr.value matches 1 positioned 284.0 -64 188.0 run scoreboard players set @a[dx=91,dy=383,dz=91,tag=!pr.spectator] pr.plot 1171
#execute if score #plot_tick_3_2 pr.value matches 1 positioned 280.0 -64 184.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_3_2 pr.value matches 1 positioned 328 0 232 run function namespace:tick_plot
#execute if score #plot_tick_3_2 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_4_2 pr.value positioned 376.0 -64 184.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_4_2 pr.value = #plot_tick_4_2 pr.value positioned 376.0 -64 184.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_4_2 pr.value matches 1 if score #plot_tick_4_2 pr.value matches 0 positioned 424 0 232 run function namespace:plot_on
#execute if score #plot_player_4_2 pr.value matches 0 if score #plot_tick_4_2 pr.value matches 1 positioned 424 0 232 run function namespace:plot_off
#execute unless score #plot_player_4_2 pr.value = #plot_tick_4_2 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_4_2 pr.value = #plot_player_4_2 pr.value
execute if score #plot_tick_4_2 pr.value matches 1 positioned 380.0 -64 188.0 run scoreboard players set @a[dx=91,dy=383,dz=91,tag=!pr.spectator] pr.plot 1172
#execute if score #plot_tick_4_2 pr.value matches 1 positioned 376.0 -64 184.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_4_2 pr.value matches 1 positioned 424 0 232 run function namespace:tick_plot
#execute if score #plot_tick_4_2 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_5_2 pr.value positioned 472.0 -64 184.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_5_2 pr.value = #plot_tick_5_2 pr.value positioned 472.0 -64 184.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_5_2 pr.value matches 1 if score #plot_tick_5_2 pr.value matches 0 positioned 520 0 232 run function namespace:plot_on
#execute if score #plot_player_5_2 pr.value matches 0 if score #plot_tick_5_2 pr.value matches 1 positioned 520 0 232 run function namespace:plot_off
#execute unless score #plot_player_5_2 pr.value = #plot_tick_5_2 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_5_2 pr.value = #plot_player_5_2 pr.value
execute if score #plot_tick_5_2 pr.value matches 1 positioned 476.0 -64 188.0 run scoreboard players set @a[dx=91,dy=383,dz=91,tag=!pr.spectator] pr.plot 1173
#execute if score #plot_tick_5_2 pr.value matches 1 positioned 472.0 -64 184.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_5_2 pr.value matches 1 positioned 520 0 232 run function namespace:tick_plot
#execute if score #plot_tick_5_2 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_6_2 pr.value positioned 568.0 -64 184.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_6_2 pr.value = #plot_tick_6_2 pr.value positioned 568.0 -64 184.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_6_2 pr.value matches 1 if score #plot_tick_6_2 pr.value matches 0 positioned 616 0 232 run function namespace:plot_on
#execute if score #plot_player_6_2 pr.value matches 0 if score #plot_tick_6_2 pr.value matches 1 positioned 616 0 232 run function namespace:plot_off
#execute unless score #plot_player_6_2 pr.value = #plot_tick_6_2 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_6_2 pr.value = #plot_player_6_2 pr.value
execute if score #plot_tick_6_2 pr.value matches 1 positioned 572.0 -64 188.0 run scoreboard players set @a[dx=91,dy=383,dz=91,tag=!pr.spectator] pr.plot 1174
#execute if score #plot_tick_6_2 pr.value matches 1 positioned 568.0 -64 184.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_6_2 pr.value matches 1 positioned 616 0 232 run function namespace:tick_plot
#execute if score #plot_tick_6_2 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_-5_3 pr.value positioned -488.0 -64 280.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_-5_3 pr.value = #plot_tick_-5_3 pr.value positioned -488.0 -64 280.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_-5_3 pr.value matches 1 if score #plot_tick_-5_3 pr.value matches 0 positioned -440 0 328 run function namespace:plot_on
#execute if score #plot_player_-5_3 pr.value matches 0 if score #plot_tick_-5_3 pr.value matches 1 positioned -440 0 328 run function namespace:plot_off
#execute unless score #plot_player_-5_3 pr.value = #plot_tick_-5_3 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_-5_3 pr.value = #plot_player_-5_3 pr.value
execute if score #plot_tick_-5_3 pr.value matches 1 positioned -484.0 -64 284.0 run scoreboard players set @a[dx=91,dy=383,dz=91,tag=!pr.spectator] pr.plot 1227
#execute if score #plot_tick_-5_3 pr.value matches 1 positioned -488.0 -64 280.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_-5_3 pr.value matches 1 positioned -440 0 328 run function namespace:tick_plot
#execute if score #plot_tick_-5_3 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_-4_3 pr.value positioned -392.0 -64 280.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_-4_3 pr.value = #plot_tick_-4_3 pr.value positioned -392.0 -64 280.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_-4_3 pr.value matches 1 if score #plot_tick_-4_3 pr.value matches 0 positioned -344 0 328 run function namespace:plot_on
#execute if score #plot_player_-4_3 pr.value matches 0 if score #plot_tick_-4_3 pr.value matches 1 positioned -344 0 328 run function namespace:plot_off
#execute unless score #plot_player_-4_3 pr.value = #plot_tick_-4_3 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_-4_3 pr.value = #plot_player_-4_3 pr.value
execute if score #plot_tick_-4_3 pr.value matches 1 positioned -388.0 -64 284.0 run scoreboard players set @a[dx=91,dy=383,dz=91,tag=!pr.spectator] pr.plot 1228
#execute if score #plot_tick_-4_3 pr.value matches 1 positioned -392.0 -64 280.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_-4_3 pr.value matches 1 positioned -344 0 328 run function namespace:tick_plot
#execute if score #plot_tick_-4_3 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_-2_3 pr.value positioned -200.0 -64 280.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_-2_3 pr.value = #plot_tick_-2_3 pr.value positioned -200.0 -64 280.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_-2_3 pr.value matches 1 if score #plot_tick_-2_3 pr.value matches 0 positioned -152 0 328 run function namespace:plot_on
#execute if score #plot_player_-2_3 pr.value matches 0 if score #plot_tick_-2_3 pr.value matches 1 positioned -152 0 328 run function namespace:plot_off
#execute unless score #plot_player_-2_3 pr.value = #plot_tick_-2_3 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_-2_3 pr.value = #plot_player_-2_3 pr.value
execute if score #plot_tick_-2_3 pr.value matches 1 positioned -196.0 -64 284.0 run scoreboard players set @a[dx=91,dy=383,dz=91,tag=!pr.spectator] pr.plot 1230
#execute if score #plot_tick_-2_3 pr.value matches 1 positioned -200.0 -64 280.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_-2_3 pr.value matches 1 positioned -152 0 328 run function namespace:tick_plot
#execute if score #plot_tick_-2_3 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_-1_3 pr.value positioned -104.0 -64 280.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_-1_3 pr.value = #plot_tick_-1_3 pr.value positioned -104.0 -64 280.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_-1_3 pr.value matches 1 if score #plot_tick_-1_3 pr.value matches 0 positioned -56 0 328 run function namespace:plot_on
#execute if score #plot_player_-1_3 pr.value matches 0 if score #plot_tick_-1_3 pr.value matches 1 positioned -56 0 328 run function namespace:plot_off
#execute unless score #plot_player_-1_3 pr.value = #plot_tick_-1_3 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_-1_3 pr.value = #plot_player_-1_3 pr.value
execute if score #plot_tick_-1_3 pr.value matches 1 positioned -100.0 -64 284.0 run scoreboard players set @a[dx=91,dy=383,dz=91,tag=!pr.spectator] pr.plot 1231
#execute if score #plot_tick_-1_3 pr.value matches 1 positioned -104.0 -64 280.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_-1_3 pr.value matches 1 positioned -56 0 328 run function namespace:tick_plot
#execute if score #plot_tick_-1_3 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_0_3 pr.value positioned -8.0 -64 280.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_0_3 pr.value = #plot_tick_0_3 pr.value positioned -8.0 -64 280.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_0_3 pr.value matches 1 if score #plot_tick_0_3 pr.value matches 0 positioned 40 0 328 run function namespace:plot_on
#execute if score #plot_player_0_3 pr.value matches 0 if score #plot_tick_0_3 pr.value matches 1 positioned 40 0 328 run function namespace:plot_off
#execute unless score #plot_player_0_3 pr.value = #plot_tick_0_3 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_0_3 pr.value = #plot_player_0_3 pr.value
execute if score #plot_tick_0_3 pr.value matches 1 positioned -4.0 -64 284.0 run scoreboard players set @a[dx=91,dy=383,dz=91,tag=!pr.spectator] pr.plot 1232
#execute if score #plot_tick_0_3 pr.value matches 1 positioned -8.0 -64 280.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_0_3 pr.value matches 1 positioned 40 0 328 run function namespace:tick_plot
#execute if score #plot_tick_0_3 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_1_3 pr.value positioned 88.0 -64 280.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_1_3 pr.value = #plot_tick_1_3 pr.value positioned 88.0 -64 280.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_1_3 pr.value matches 1 if score #plot_tick_1_3 pr.value matches 0 positioned 136 0 328 run function namespace:plot_on
#execute if score #plot_player_1_3 pr.value matches 0 if score #plot_tick_1_3 pr.value matches 1 positioned 136 0 328 run function namespace:plot_off
#execute unless score #plot_player_1_3 pr.value = #plot_tick_1_3 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_1_3 pr.value = #plot_player_1_3 pr.value
execute if score #plot_tick_1_3 pr.value matches 1 positioned 92.0 -64 284.0 run scoreboard players set @a[dx=91,dy=383,dz=91,tag=!pr.spectator] pr.plot 1233
#execute if score #plot_tick_1_3 pr.value matches 1 positioned 88.0 -64 280.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_1_3 pr.value matches 1 positioned 136 0 328 run function namespace:tick_plot
#execute if score #plot_tick_1_3 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_2_3 pr.value positioned 184.0 -64 280.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_2_3 pr.value = #plot_tick_2_3 pr.value positioned 184.0 -64 280.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_2_3 pr.value matches 1 if score #plot_tick_2_3 pr.value matches 0 positioned 232 0 328 run function namespace:plot_on
#execute if score #plot_player_2_3 pr.value matches 0 if score #plot_tick_2_3 pr.value matches 1 positioned 232 0 328 run function namespace:plot_off
#execute unless score #plot_player_2_3 pr.value = #plot_tick_2_3 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_2_3 pr.value = #plot_player_2_3 pr.value
execute if score #plot_tick_2_3 pr.value matches 1 positioned 188.0 -64 284.0 run scoreboard players set @a[dx=91,dy=383,dz=91,tag=!pr.spectator] pr.plot 1234
#execute if score #plot_tick_2_3 pr.value matches 1 positioned 184.0 -64 280.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_2_3 pr.value matches 1 positioned 232 0 328 run function namespace:tick_plot
#execute if score #plot_tick_2_3 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_4_3 pr.value positioned 376.0 -64 280.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_4_3 pr.value = #plot_tick_4_3 pr.value positioned 376.0 -64 280.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_4_3 pr.value matches 1 if score #plot_tick_4_3 pr.value matches 0 positioned 424 0 328 run function namespace:plot_on
#execute if score #plot_player_4_3 pr.value matches 0 if score #plot_tick_4_3 pr.value matches 1 positioned 424 0 328 run function namespace:plot_off
#execute unless score #plot_player_4_3 pr.value = #plot_tick_4_3 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_4_3 pr.value = #plot_player_4_3 pr.value
execute if score #plot_tick_4_3 pr.value matches 1 positioned 380.0 -64 284.0 run scoreboard players set @a[dx=91,dy=383,dz=91,tag=!pr.spectator] pr.plot 1236
#execute if score #plot_tick_4_3 pr.value matches 1 positioned 376.0 -64 280.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_4_3 pr.value matches 1 positioned 424 0 328 run function namespace:tick_plot
#execute if score #plot_tick_4_3 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_5_3 pr.value positioned 472.0 -64 280.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_5_3 pr.value = #plot_tick_5_3 pr.value positioned 472.0 -64 280.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_5_3 pr.value matches 1 if score #plot_tick_5_3 pr.value matches 0 positioned 520 0 328 run function namespace:plot_on
#execute if score #plot_player_5_3 pr.value matches 0 if score #plot_tick_5_3 pr.value matches 1 positioned 520 0 328 run function namespace:plot_off
#execute unless score #plot_player_5_3 pr.value = #plot_tick_5_3 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_5_3 pr.value = #plot_player_5_3 pr.value
execute if score #plot_tick_5_3 pr.value matches 1 positioned 476.0 -64 284.0 run scoreboard players set @a[dx=91,dy=383,dz=91,tag=!pr.spectator] pr.plot 1237
#execute if score #plot_tick_5_3 pr.value matches 1 positioned 472.0 -64 280.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_5_3 pr.value matches 1 positioned 520 0 328 run function namespace:tick_plot
#execute if score #plot_tick_5_3 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_-3_4 pr.value positioned -296.0 -64 376.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_-3_4 pr.value = #plot_tick_-3_4 pr.value positioned -296.0 -64 376.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_-3_4 pr.value matches 1 if score #plot_tick_-3_4 pr.value matches 0 positioned -248 0 424 run function namespace:plot_on
#execute if score #plot_player_-3_4 pr.value matches 0 if score #plot_tick_-3_4 pr.value matches 1 positioned -248 0 424 run function namespace:plot_off
#execute unless score #plot_player_-3_4 pr.value = #plot_tick_-3_4 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_-3_4 pr.value = #plot_player_-3_4 pr.value
execute if score #plot_tick_-3_4 pr.value matches 1 positioned -292.0 -64 380.0 run scoreboard players set @a[dx=91,dy=383,dz=91,tag=!pr.spectator] pr.plot 1293
#execute if score #plot_tick_-3_4 pr.value matches 1 positioned -296.0 -64 376.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_-3_4 pr.value matches 1 positioned -248 0 424 run function namespace:tick_plot
#execute if score #plot_tick_-3_4 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_-2_4 pr.value positioned -200.0 -64 376.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_-2_4 pr.value = #plot_tick_-2_4 pr.value positioned -200.0 -64 376.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_-2_4 pr.value matches 1 if score #plot_tick_-2_4 pr.value matches 0 positioned -152 0 424 run function namespace:plot_on
#execute if score #plot_player_-2_4 pr.value matches 0 if score #plot_tick_-2_4 pr.value matches 1 positioned -152 0 424 run function namespace:plot_off
#execute unless score #plot_player_-2_4 pr.value = #plot_tick_-2_4 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_-2_4 pr.value = #plot_player_-2_4 pr.value
execute if score #plot_tick_-2_4 pr.value matches 1 positioned -196.0 -64 380.0 run scoreboard players set @a[dx=91,dy=383,dz=91,tag=!pr.spectator] pr.plot 1294
#execute if score #plot_tick_-2_4 pr.value matches 1 positioned -200.0 -64 376.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_-2_4 pr.value matches 1 positioned -152 0 424 run function namespace:tick_plot
#execute if score #plot_tick_-2_4 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_-1_4 pr.value positioned -104.0 -64 376.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_-1_4 pr.value = #plot_tick_-1_4 pr.value positioned -104.0 -64 376.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_-1_4 pr.value matches 1 if score #plot_tick_-1_4 pr.value matches 0 positioned -56 0 424 run function namespace:plot_on
#execute if score #plot_player_-1_4 pr.value matches 0 if score #plot_tick_-1_4 pr.value matches 1 positioned -56 0 424 run function namespace:plot_off
#execute unless score #plot_player_-1_4 pr.value = #plot_tick_-1_4 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_-1_4 pr.value = #plot_player_-1_4 pr.value
execute if score #plot_tick_-1_4 pr.value matches 1 positioned -100.0 -64 380.0 run scoreboard players set @a[dx=91,dy=383,dz=91,tag=!pr.spectator] pr.plot 1295
#execute if score #plot_tick_-1_4 pr.value matches 1 positioned -104.0 -64 376.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_-1_4 pr.value matches 1 positioned -56 0 424 run function namespace:tick_plot
#execute if score #plot_tick_-1_4 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_0_4 pr.value positioned -8.0 -64 376.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_0_4 pr.value = #plot_tick_0_4 pr.value positioned -8.0 -64 376.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_0_4 pr.value matches 1 if score #plot_tick_0_4 pr.value matches 0 positioned 40 0 424 run function namespace:plot_on
#execute if score #plot_player_0_4 pr.value matches 0 if score #plot_tick_0_4 pr.value matches 1 positioned 40 0 424 run function namespace:plot_off
#execute unless score #plot_player_0_4 pr.value = #plot_tick_0_4 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_0_4 pr.value = #plot_player_0_4 pr.value
execute if score #plot_tick_0_4 pr.value matches 1 positioned -4.0 -64 380.0 run scoreboard players set @a[dx=91,dy=383,dz=91,tag=!pr.spectator] pr.plot 1296
#execute if score #plot_tick_0_4 pr.value matches 1 positioned -8.0 -64 376.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_0_4 pr.value matches 1 positioned 40 0 424 run function namespace:tick_plot
#execute if score #plot_tick_0_4 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_1_4 pr.value positioned 88.0 -64 376.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_1_4 pr.value = #plot_tick_1_4 pr.value positioned 88.0 -64 376.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_1_4 pr.value matches 1 if score #plot_tick_1_4 pr.value matches 0 positioned 136 0 424 run function namespace:plot_on
#execute if score #plot_player_1_4 pr.value matches 0 if score #plot_tick_1_4 pr.value matches 1 positioned 136 0 424 run function namespace:plot_off
#execute unless score #plot_player_1_4 pr.value = #plot_tick_1_4 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_1_4 pr.value = #plot_player_1_4 pr.value
execute if score #plot_tick_1_4 pr.value matches 1 positioned 92.0 -64 380.0 run scoreboard players set @a[dx=91,dy=383,dz=91,tag=!pr.spectator] pr.plot 1297
#execute if score #plot_tick_1_4 pr.value matches 1 positioned 88.0 -64 376.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_1_4 pr.value matches 1 positioned 136 0 424 run function namespace:tick_plot
#execute if score #plot_tick_1_4 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_2_4 pr.value positioned 184.0 -64 376.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_2_4 pr.value = #plot_tick_2_4 pr.value positioned 184.0 -64 376.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_2_4 pr.value matches 1 if score #plot_tick_2_4 pr.value matches 0 positioned 232 0 424 run function namespace:plot_on
#execute if score #plot_player_2_4 pr.value matches 0 if score #plot_tick_2_4 pr.value matches 1 positioned 232 0 424 run function namespace:plot_off
#execute unless score #plot_player_2_4 pr.value = #plot_tick_2_4 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_2_4 pr.value = #plot_player_2_4 pr.value
execute if score #plot_tick_2_4 pr.value matches 1 positioned 188.0 -64 380.0 run scoreboard players set @a[dx=91,dy=383,dz=91,tag=!pr.spectator] pr.plot 1298
#execute if score #plot_tick_2_4 pr.value matches 1 positioned 184.0 -64 376.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_2_4 pr.value matches 1 positioned 232 0 424 run function namespace:tick_plot
#execute if score #plot_tick_2_4 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_3_4 pr.value positioned 280.0 -64 376.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_3_4 pr.value = #plot_tick_3_4 pr.value positioned 280.0 -64 376.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_3_4 pr.value matches 1 if score #plot_tick_3_4 pr.value matches 0 positioned 328 0 424 run function namespace:plot_on
#execute if score #plot_player_3_4 pr.value matches 0 if score #plot_tick_3_4 pr.value matches 1 positioned 328 0 424 run function namespace:plot_off
#execute unless score #plot_player_3_4 pr.value = #plot_tick_3_4 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_3_4 pr.value = #plot_player_3_4 pr.value
execute if score #plot_tick_3_4 pr.value matches 1 positioned 284.0 -64 380.0 run scoreboard players set @a[dx=91,dy=383,dz=91,tag=!pr.spectator] pr.plot 1299
#execute if score #plot_tick_3_4 pr.value matches 1 positioned 280.0 -64 376.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_3_4 pr.value matches 1 positioned 328 0 424 run function namespace:tick_plot
#execute if score #plot_tick_3_4 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_-3_5 pr.value positioned -296.0 -64 472.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_-3_5 pr.value = #plot_tick_-3_5 pr.value positioned -296.0 -64 472.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_-3_5 pr.value matches 1 if score #plot_tick_-3_5 pr.value matches 0 positioned -248 0 520 run function namespace:plot_on
#execute if score #plot_player_-3_5 pr.value matches 0 if score #plot_tick_-3_5 pr.value matches 1 positioned -248 0 520 run function namespace:plot_off
#execute unless score #plot_player_-3_5 pr.value = #plot_tick_-3_5 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_-3_5 pr.value = #plot_player_-3_5 pr.value
execute if score #plot_tick_-3_5 pr.value matches 1 positioned -292.0 -64 476.0 run scoreboard players set @a[dx=91,dy=383,dz=91,tag=!pr.spectator] pr.plot 1357
#execute if score #plot_tick_-3_5 pr.value matches 1 positioned -296.0 -64 472.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_-3_5 pr.value matches 1 positioned -248 0 520 run function namespace:tick_plot
#execute if score #plot_tick_-3_5 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_-2_5 pr.value positioned -200.0 -64 472.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_-2_5 pr.value = #plot_tick_-2_5 pr.value positioned -200.0 -64 472.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_-2_5 pr.value matches 1 if score #plot_tick_-2_5 pr.value matches 0 positioned -152 0 520 run function namespace:plot_on
#execute if score #plot_player_-2_5 pr.value matches 0 if score #plot_tick_-2_5 pr.value matches 1 positioned -152 0 520 run function namespace:plot_off
#execute unless score #plot_player_-2_5 pr.value = #plot_tick_-2_5 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_-2_5 pr.value = #plot_player_-2_5 pr.value
execute if score #plot_tick_-2_5 pr.value matches 1 positioned -196.0 -64 476.0 run scoreboard players set @a[dx=91,dy=383,dz=91,tag=!pr.spectator] pr.plot 1358
#execute if score #plot_tick_-2_5 pr.value matches 1 positioned -200.0 -64 472.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_-2_5 pr.value matches 1 positioned -152 0 520 run function namespace:tick_plot
#execute if score #plot_tick_-2_5 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_-1_5 pr.value positioned -104.0 -64 472.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_-1_5 pr.value = #plot_tick_-1_5 pr.value positioned -104.0 -64 472.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_-1_5 pr.value matches 1 if score #plot_tick_-1_5 pr.value matches 0 positioned -56 0 520 run function namespace:plot_on
#execute if score #plot_player_-1_5 pr.value matches 0 if score #plot_tick_-1_5 pr.value matches 1 positioned -56 0 520 run function namespace:plot_off
#execute unless score #plot_player_-1_5 pr.value = #plot_tick_-1_5 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_-1_5 pr.value = #plot_player_-1_5 pr.value
execute if score #plot_tick_-1_5 pr.value matches 1 positioned -100.0 -64 476.0 run scoreboard players set @a[dx=91,dy=383,dz=91,tag=!pr.spectator] pr.plot 1359
#execute if score #plot_tick_-1_5 pr.value matches 1 positioned -104.0 -64 472.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_-1_5 pr.value matches 1 positioned -56 0 520 run function namespace:tick_plot
#execute if score #plot_tick_-1_5 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_1_5 pr.value positioned 88.0 -64 472.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_1_5 pr.value = #plot_tick_1_5 pr.value positioned 88.0 -64 472.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_1_5 pr.value matches 1 if score #plot_tick_1_5 pr.value matches 0 positioned 136 0 520 run function namespace:plot_on
#execute if score #plot_player_1_5 pr.value matches 0 if score #plot_tick_1_5 pr.value matches 1 positioned 136 0 520 run function namespace:plot_off
#execute unless score #plot_player_1_5 pr.value = #plot_tick_1_5 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_1_5 pr.value = #plot_player_1_5 pr.value
execute if score #plot_tick_1_5 pr.value matches 1 positioned 92.0 -64 476.0 run scoreboard players set @a[dx=91,dy=383,dz=91,tag=!pr.spectator] pr.plot 1361
#execute if score #plot_tick_1_5 pr.value matches 1 positioned 88.0 -64 472.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_1_5 pr.value matches 1 positioned 136 0 520 run function namespace:tick_plot
#execute if score #plot_tick_1_5 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_2_5 pr.value positioned 184.0 -64 472.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_2_5 pr.value = #plot_tick_2_5 pr.value positioned 184.0 -64 472.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_2_5 pr.value matches 1 if score #plot_tick_2_5 pr.value matches 0 positioned 232 0 520 run function namespace:plot_on
#execute if score #plot_player_2_5 pr.value matches 0 if score #plot_tick_2_5 pr.value matches 1 positioned 232 0 520 run function namespace:plot_off
#execute unless score #plot_player_2_5 pr.value = #plot_tick_2_5 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_2_5 pr.value = #plot_player_2_5 pr.value
execute if score #plot_tick_2_5 pr.value matches 1 positioned 188.0 -64 476.0 run scoreboard players set @a[dx=91,dy=383,dz=91,tag=!pr.spectator] pr.plot 1362
#execute if score #plot_tick_2_5 pr.value matches 1 positioned 184.0 -64 472.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_2_5 pr.value matches 1 positioned 232 0 520 run function namespace:tick_plot
#execute if score #plot_tick_2_5 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_3_5 pr.value positioned 280.0 -64 472.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_3_5 pr.value = #plot_tick_3_5 pr.value positioned 280.0 -64 472.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_3_5 pr.value matches 1 if score #plot_tick_3_5 pr.value matches 0 positioned 328 0 520 run function namespace:plot_on
#execute if score #plot_player_3_5 pr.value matches 0 if score #plot_tick_3_5 pr.value matches 1 positioned 328 0 520 run function namespace:plot_off
#execute unless score #plot_player_3_5 pr.value = #plot_tick_3_5 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_3_5 pr.value = #plot_player_3_5 pr.value
execute if score #plot_tick_3_5 pr.value matches 1 positioned 284.0 -64 476.0 run scoreboard players set @a[dx=91,dy=383,dz=91,tag=!pr.spectator] pr.plot 1363
#execute if score #plot_tick_3_5 pr.value matches 1 positioned 280.0 -64 472.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_3_5 pr.value matches 1 positioned 328 0 520 run function namespace:tick_plot
#execute if score #plot_tick_3_5 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_-2_6 pr.value positioned -200.0 -64 568.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_-2_6 pr.value = #plot_tick_-2_6 pr.value positioned -200.0 -64 568.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_-2_6 pr.value matches 1 if score #plot_tick_-2_6 pr.value matches 0 positioned -152 0 616 run function namespace:plot_on
#execute if score #plot_player_-2_6 pr.value matches 0 if score #plot_tick_-2_6 pr.value matches 1 positioned -152 0 616 run function namespace:plot_off
#execute unless score #plot_player_-2_6 pr.value = #plot_tick_-2_6 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_-2_6 pr.value = #plot_player_-2_6 pr.value
execute if score #plot_tick_-2_6 pr.value matches 1 positioned -196.0 -64 572.0 run scoreboard players set @a[dx=91,dy=383,dz=91,tag=!pr.spectator] pr.plot 1422
#execute if score #plot_tick_-2_6 pr.value matches 1 positioned -200.0 -64 568.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_-2_6 pr.value matches 1 positioned -152 0 616 run function namespace:tick_plot
#execute if score #plot_tick_-2_6 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_2_6 pr.value positioned 184.0 -64 568.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_2_6 pr.value = #plot_tick_2_6 pr.value positioned 184.0 -64 568.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_2_6 pr.value matches 1 if score #plot_tick_2_6 pr.value matches 0 positioned 232 0 616 run function namespace:plot_on
#execute if score #plot_player_2_6 pr.value matches 0 if score #plot_tick_2_6 pr.value matches 1 positioned 232 0 616 run function namespace:plot_off
#execute unless score #plot_player_2_6 pr.value = #plot_tick_2_6 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_2_6 pr.value = #plot_player_2_6 pr.value
execute if score #plot_tick_2_6 pr.value matches 1 positioned 188.0 -64 572.0 run scoreboard players set @a[dx=91,dy=383,dz=91,tag=!pr.spectator] pr.plot 1426
#execute if score #plot_tick_2_6 pr.value matches 1 positioned 184.0 -64 568.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_2_6 pr.value matches 1 positioned 232 0 616 run function namespace:tick_plot
#execute if score #plot_tick_2_6 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target