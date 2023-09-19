# Tick plots

execute store result score #plot_player_-2_-6 pr.value positioned -200.0 -64 -584.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
scoreboard players set #check_loaded_bool pr.value 1
execute if score #plot_player_-2_-6 pr.value matches 0 if score #plot_tick_-2_-6 pr.value matches 0 run scoreboard players set #check_loaded_bool pr.value 0
scoreboard players set #chunk_loaded_bool pr.value 0
execute if score #check_loaded_bool pr.value matches 1 if loaded -176 0 -560 if loaded -144 0 -560 if loaded -176 0 -528 if loaded -144 0 -528 run scoreboard players set #chunk_loaded_bool pr.value 1
execute if score #plot_player_-2_-6 pr.value matches 1 if score #plot_tick_-2_-6 pr.value matches 0 run forceload add -176 -560
execute if score #plot_player_-2_-6 pr.value matches 1 if score #plot_tick_-2_-6 pr.value matches 0 run forceload add -144 -560
execute if score #plot_player_-2_-6 pr.value matches 1 if score #plot_tick_-2_-6 pr.value matches 0 run forceload add -176 -528
execute if score #plot_player_-2_-6 pr.value matches 1 if score #plot_tick_-2_-6 pr.value matches 0 run forceload add -144 -528
execute if score #plot_player_-2_-6 pr.value matches 0 if score #plot_tick_-2_-6 pr.value matches 1 run forceload remove -176 -560
execute if score #plot_player_-2_-6 pr.value matches 0 if score #plot_tick_-2_-6 pr.value matches 1 run forceload remove -144 -560
execute if score #plot_player_-2_-6 pr.value matches 0 if score #plot_tick_-2_-6 pr.value matches 1 run forceload remove -176 -528
execute if score #plot_player_-2_-6 pr.value matches 0 if score #plot_tick_-2_-6 pr.value matches 1 run forceload remove -144 -528
execute if score #chunk_loaded_bool pr.value matches 1 unless score #plot_player_-2_-6 pr.value = #plot_tick_-2_-6 pr.value positioned -200.0 -64 -584.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_player_-2_-6 pr.value matches 1 if score #plot_tick_-2_-6 pr.value matches 0 positioned -152 0 -536 run function eosand:plot_on
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_player_-2_-6 pr.value matches 0 if score #plot_tick_-2_-6 pr.value matches 1 positioned -152 0 -536 run function eosand:plot_off
execute if score #chunk_loaded_bool pr.value matches 1 unless score #plot_player_-2_-6 pr.value = #plot_tick_-2_-6 pr.value run tag @e[tag=pr.target] remove pr.target
execute if score #chunk_loaded_bool pr.value matches 1 run scoreboard players operation #plot_tick_-2_-6 pr.value = #plot_player_-2_-6 pr.value
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_-2_-6 pr.value matches 1 positioned -196.0 -64 -580.0 run scoreboard players set @a[dx=87,dy=383,dz=87,tag=!pr.spectator] pr.plot 654
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_-2_-6 pr.value matches 1 positioned -196.0 -64 -580.0 run tag @e[dx=87,dy=383,dz=87,tag=!pr.spectator] add pr.target
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_-2_-6 pr.value matches 1 as @a[tag=pr.target] unless score @s pr.plot = @s pr.plot_previous at @s run function pr:player/plot/move
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_-2_-6 pr.value matches 1 positioned -152 0 -536 run function eosand:tick_plot
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_-2_-6 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_2_-6 pr.value positioned 184.0 -64 -584.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_2_-6 pr.value = #plot_tick_2_-6 pr.value positioned 184.0 -64 -584.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_2_-6 pr.value matches 1 if score #plot_tick_2_-6 pr.value matches 0 positioned 232 0 -536 run function namespace:plot_on
#execute if score #plot_player_2_-6 pr.value matches 0 if score #plot_tick_2_-6 pr.value matches 1 positioned 232 0 -536 run function namespace:plot_off
#execute unless score #plot_player_2_-6 pr.value = #plot_tick_2_-6 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_2_-6 pr.value = #plot_player_2_-6 pr.value
execute if score #plot_tick_2_-6 pr.value matches 1 positioned 188.0 -64 -580.0 run scoreboard players set @a[dx=87,dy=383,dz=87,tag=!pr.spectator] pr.plot 658
#execute if score #plot_tick_2_-6 pr.value matches 1 positioned 188.0 -64 -580.0 run tag @e[dx=87,dy=383,dz=87,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_2_-6 pr.value matches 1 as @a[tag=pr.target] unless score @s pr.plot = @s pr.plot_previous at @s run function pr:player/plot/move
#execute if score #plot_tick_2_-6 pr.value matches 1 positioned 232 0 -536 run function namespace:tick_plot
#execute if score #plot_tick_2_-6 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_-3_-5 pr.value positioned -296.0 -64 -488.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_-3_-5 pr.value = #plot_tick_-3_-5 pr.value positioned -296.0 -64 -488.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_-3_-5 pr.value matches 1 if score #plot_tick_-3_-5 pr.value matches 0 positioned -248 0 -440 run function namespace:plot_on
#execute if score #plot_player_-3_-5 pr.value matches 0 if score #plot_tick_-3_-5 pr.value matches 1 positioned -248 0 -440 run function namespace:plot_off
#execute unless score #plot_player_-3_-5 pr.value = #plot_tick_-3_-5 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_-3_-5 pr.value = #plot_player_-3_-5 pr.value
execute if score #plot_tick_-3_-5 pr.value matches 1 positioned -292.0 -64 -484.0 run scoreboard players set @a[dx=87,dy=383,dz=87,tag=!pr.spectator] pr.plot 717
#execute if score #plot_tick_-3_-5 pr.value matches 1 positioned -292.0 -64 -484.0 run tag @e[dx=87,dy=383,dz=87,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_-3_-5 pr.value matches 1 as @a[tag=pr.target] unless score @s pr.plot = @s pr.plot_previous at @s run function pr:player/plot/move
#execute if score #plot_tick_-3_-5 pr.value matches 1 positioned -248 0 -440 run function namespace:tick_plot
#execute if score #plot_tick_-3_-5 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_-2_-5 pr.value positioned -200.0 -64 -488.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
scoreboard players set #check_loaded_bool pr.value 1
execute if score #plot_player_-2_-5 pr.value matches 0 if score #plot_tick_-2_-5 pr.value matches 0 run scoreboard players set #check_loaded_bool pr.value 0
scoreboard players set #chunk_loaded_bool pr.value 0
execute if score #check_loaded_bool pr.value matches 1 if loaded -176 0 -464 if loaded -144 0 -464 if loaded -176 0 -432 if loaded -144 0 -432 run scoreboard players set #chunk_loaded_bool pr.value 1
execute if score #plot_player_-2_-5 pr.value matches 1 if score #plot_tick_-2_-5 pr.value matches 0 run forceload add -176 -464
execute if score #plot_player_-2_-5 pr.value matches 1 if score #plot_tick_-2_-5 pr.value matches 0 run forceload add -144 -464
execute if score #plot_player_-2_-5 pr.value matches 1 if score #plot_tick_-2_-5 pr.value matches 0 run forceload add -176 -432
execute if score #plot_player_-2_-5 pr.value matches 1 if score #plot_tick_-2_-5 pr.value matches 0 run forceload add -144 -432
execute if score #plot_player_-2_-5 pr.value matches 0 if score #plot_tick_-2_-5 pr.value matches 1 run forceload remove -176 -464
execute if score #plot_player_-2_-5 pr.value matches 0 if score #plot_tick_-2_-5 pr.value matches 1 run forceload remove -144 -464
execute if score #plot_player_-2_-5 pr.value matches 0 if score #plot_tick_-2_-5 pr.value matches 1 run forceload remove -176 -432
execute if score #plot_player_-2_-5 pr.value matches 0 if score #plot_tick_-2_-5 pr.value matches 1 run forceload remove -144 -432
execute if score #chunk_loaded_bool pr.value matches 1 unless score #plot_player_-2_-5 pr.value = #plot_tick_-2_-5 pr.value positioned -200.0 -64 -488.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_player_-2_-5 pr.value matches 1 if score #plot_tick_-2_-5 pr.value matches 0 positioned -152 0 -440 run function ronanemperor:plot_on
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_player_-2_-5 pr.value matches 0 if score #plot_tick_-2_-5 pr.value matches 1 positioned -152 0 -440 run function ronanemperor:plot_off
execute if score #chunk_loaded_bool pr.value matches 1 unless score #plot_player_-2_-5 pr.value = #plot_tick_-2_-5 pr.value run tag @e[tag=pr.target] remove pr.target
execute if score #chunk_loaded_bool pr.value matches 1 run scoreboard players operation #plot_tick_-2_-5 pr.value = #plot_player_-2_-5 pr.value
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_-2_-5 pr.value matches 1 positioned -196.0 -64 -484.0 run scoreboard players set @a[dx=87,dy=383,dz=87,tag=!pr.spectator] pr.plot 718
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_-2_-5 pr.value matches 1 positioned -196.0 -64 -484.0 run tag @e[dx=87,dy=383,dz=87,tag=!pr.spectator] add pr.target
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_-2_-5 pr.value matches 1 as @a[tag=pr.target] unless score @s pr.plot = @s pr.plot_previous at @s run function pr:player/plot/move
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_-2_-5 pr.value matches 1 positioned -152 0 -440 run function ronanemperor:tick_plot
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_-2_-5 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_-1_-5 pr.value positioned -104.0 -64 -488.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
execute unless score #plot_player_-1_-5 pr.value = #plot_tick_-1_-5 pr.value positioned -104.0 -64 -488.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
execute if score #plot_player_-1_-5 pr.value matches 1 if score #plot_tick_-1_-5 pr.value matches 0 positioned -56 0 -440 run function spinat:plot_on
execute if score #plot_player_-1_-5 pr.value matches 0 if score #plot_tick_-1_-5 pr.value matches 1 positioned -56 0 -440 run function spinat:plot_off
execute unless score #plot_player_-1_-5 pr.value = #plot_tick_-1_-5 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_-1_-5 pr.value = #plot_player_-1_-5 pr.value
execute if score #plot_tick_-1_-5 pr.value matches 1 positioned -100.0 -64 -484.0 run scoreboard players set @a[dx=87,dy=383,dz=87,tag=!pr.spectator] pr.plot 719
execute if score #plot_tick_-1_-5 pr.value matches 1 positioned -100.0 -64 -484.0 run tag @e[dx=87,dy=383,dz=87,tag=!pr.spectator] add pr.target
execute if score #plot_tick_-1_-5 pr.value matches 1 as @a[tag=pr.target] unless score @s pr.plot = @s pr.plot_previous at @s run function pr:player/plot/move
execute if score #plot_tick_-1_-5 pr.value matches 1 positioned -56 0 -440 run function spinat:tick_plot
execute if score #plot_tick_-1_-5 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_1_-5 pr.value positioned 88.0 -64 -488.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
scoreboard players set #check_loaded_bool pr.value 1
execute if score #plot_player_1_-5 pr.value matches 0 if score #plot_tick_1_-5 pr.value matches 0 run scoreboard players set #check_loaded_bool pr.value 0
scoreboard players set #chunk_loaded_bool pr.value 0
execute if score #check_loaded_bool pr.value matches 1 if loaded 112 0 -464 if loaded 144 0 -464 if loaded 112 0 -432 if loaded 144 0 -432 run scoreboard players set #chunk_loaded_bool pr.value 1
execute if score #plot_player_1_-5 pr.value matches 1 if score #plot_tick_1_-5 pr.value matches 0 run forceload add 112 -464
execute if score #plot_player_1_-5 pr.value matches 1 if score #plot_tick_1_-5 pr.value matches 0 run forceload add 144 -464
execute if score #plot_player_1_-5 pr.value matches 1 if score #plot_tick_1_-5 pr.value matches 0 run forceload add 112 -432
execute if score #plot_player_1_-5 pr.value matches 1 if score #plot_tick_1_-5 pr.value matches 0 run forceload add 144 -432
execute if score #plot_player_1_-5 pr.value matches 0 if score #plot_tick_1_-5 pr.value matches 1 run forceload remove 112 -464
execute if score #plot_player_1_-5 pr.value matches 0 if score #plot_tick_1_-5 pr.value matches 1 run forceload remove 144 -464
execute if score #plot_player_1_-5 pr.value matches 0 if score #plot_tick_1_-5 pr.value matches 1 run forceload remove 112 -432
execute if score #plot_player_1_-5 pr.value matches 0 if score #plot_tick_1_-5 pr.value matches 1 run forceload remove 144 -432
execute if score #chunk_loaded_bool pr.value matches 1 unless score #plot_player_1_-5 pr.value = #plot_tick_1_-5 pr.value positioned 88.0 -64 -488.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_player_1_-5 pr.value matches 1 if score #plot_tick_1_-5 pr.value matches 0 positioned 136 0 -440 run function rko:plot_on
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_player_1_-5 pr.value matches 0 if score #plot_tick_1_-5 pr.value matches 1 positioned 136 0 -440 run function rko:plot_off
execute if score #chunk_loaded_bool pr.value matches 1 unless score #plot_player_1_-5 pr.value = #plot_tick_1_-5 pr.value run tag @e[tag=pr.target] remove pr.target
execute if score #chunk_loaded_bool pr.value matches 1 run scoreboard players operation #plot_tick_1_-5 pr.value = #plot_player_1_-5 pr.value
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_1_-5 pr.value matches 1 positioned 92.0 -64 -484.0 run scoreboard players set @a[dx=87,dy=383,dz=87,tag=!pr.spectator] pr.plot 721
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_1_-5 pr.value matches 1 positioned 92.0 -64 -484.0 run tag @e[dx=87,dy=383,dz=87,tag=!pr.spectator] add pr.target
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_1_-5 pr.value matches 1 as @a[tag=pr.target] unless score @s pr.plot = @s pr.plot_previous at @s run function pr:player/plot/move
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_1_-5 pr.value matches 1 positioned 136 0 -440 run function rko:tick_plot
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_1_-5 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_2_-5 pr.value positioned 184.0 -64 -488.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
execute unless score #plot_player_2_-5 pr.value = #plot_tick_2_-5 pr.value positioned 184.0 -64 -488.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
execute if score #plot_player_2_-5 pr.value matches 1 if score #plot_tick_2_-5 pr.value matches 0 positioned 232 0 -440 run function decimate:plot_on
execute if score #plot_player_2_-5 pr.value matches 0 if score #plot_tick_2_-5 pr.value matches 1 positioned 232 0 -440 run function decimate:plot_off
execute unless score #plot_player_2_-5 pr.value = #plot_tick_2_-5 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_2_-5 pr.value = #plot_player_2_-5 pr.value
execute if score #plot_tick_2_-5 pr.value matches 1 positioned 188.0 -64 -484.0 run scoreboard players set @a[dx=87,dy=383,dz=87,tag=!pr.spectator] pr.plot 722
execute if score #plot_tick_2_-5 pr.value matches 1 positioned 188.0 -64 -484.0 run tag @e[dx=87,dy=383,dz=87,tag=!pr.spectator] add pr.target
execute if score #plot_tick_2_-5 pr.value matches 1 as @a[tag=pr.target] unless score @s pr.plot = @s pr.plot_previous at @s run function pr:player/plot/move
execute if score #plot_tick_2_-5 pr.value matches 1 positioned 232 0 -440 run function decimate:tick_plot
execute if score #plot_tick_2_-5 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_3_-5 pr.value positioned 280.0 -64 -488.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
execute unless score #plot_player_3_-5 pr.value = #plot_tick_3_-5 pr.value positioned 280.0 -64 -488.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
execute if score #plot_player_3_-5 pr.value matches 1 if score #plot_tick_3_-5 pr.value matches 0 positioned 328 0 -440 run function shadoweeq:plot_on
execute if score #plot_player_3_-5 pr.value matches 0 if score #plot_tick_3_-5 pr.value matches 1 positioned 328 0 -440 run function shadoweeq:plot_off
execute unless score #plot_player_3_-5 pr.value = #plot_tick_3_-5 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_3_-5 pr.value = #plot_player_3_-5 pr.value
execute if score #plot_tick_3_-5 pr.value matches 1 positioned 284.0 -64 -484.0 run scoreboard players set @a[dx=87,dy=383,dz=87,tag=!pr.spectator] pr.plot 723
execute if score #plot_tick_3_-5 pr.value matches 1 positioned 284.0 -64 -484.0 run tag @e[dx=87,dy=383,dz=87,tag=!pr.spectator] add pr.target
execute if score #plot_tick_3_-5 pr.value matches 1 as @a[tag=pr.target] unless score @s pr.plot = @s pr.plot_previous at @s run function pr:player/plot/move
execute if score #plot_tick_3_-5 pr.value matches 1 positioned 328 0 -440 run function shadoweeq:tick_plot
execute if score #plot_tick_3_-5 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_-3_-4 pr.value positioned -296.0 -64 -392.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_-3_-4 pr.value = #plot_tick_-3_-4 pr.value positioned -296.0 -64 -392.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_-3_-4 pr.value matches 1 if score #plot_tick_-3_-4 pr.value matches 0 positioned -248 0 -344 run function namespace:plot_on
#execute if score #plot_player_-3_-4 pr.value matches 0 if score #plot_tick_-3_-4 pr.value matches 1 positioned -248 0 -344 run function namespace:plot_off
#execute unless score #plot_player_-3_-4 pr.value = #plot_tick_-3_-4 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_-3_-4 pr.value = #plot_player_-3_-4 pr.value
execute if score #plot_tick_-3_-4 pr.value matches 1 positioned -292.0 -64 -388.0 run scoreboard players set @a[dx=87,dy=383,dz=87,tag=!pr.spectator] pr.plot 781
#execute if score #plot_tick_-3_-4 pr.value matches 1 positioned -292.0 -64 -388.0 run tag @e[dx=87,dy=383,dz=87,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_-3_-4 pr.value matches 1 as @a[tag=pr.target] unless score @s pr.plot = @s pr.plot_previous at @s run function pr:player/plot/move
#execute if score #plot_tick_-3_-4 pr.value matches 1 positioned -248 0 -344 run function namespace:tick_plot
#execute if score #plot_tick_-3_-4 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_-2_-4 pr.value positioned -200.0 -64 -392.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_-2_-4 pr.value = #plot_tick_-2_-4 pr.value positioned -200.0 -64 -392.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_-2_-4 pr.value matches 1 if score #plot_tick_-2_-4 pr.value matches 0 positioned -152 0 -344 run function namespace:plot_on
#execute if score #plot_player_-2_-4 pr.value matches 0 if score #plot_tick_-2_-4 pr.value matches 1 positioned -152 0 -344 run function namespace:plot_off
#execute unless score #plot_player_-2_-4 pr.value = #plot_tick_-2_-4 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_-2_-4 pr.value = #plot_player_-2_-4 pr.value
execute if score #plot_tick_-2_-4 pr.value matches 1 positioned -196.0 -64 -388.0 run scoreboard players set @a[dx=87,dy=383,dz=87,tag=!pr.spectator] pr.plot 782
#execute if score #plot_tick_-2_-4 pr.value matches 1 positioned -196.0 -64 -388.0 run tag @e[dx=87,dy=383,dz=87,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_-2_-4 pr.value matches 1 as @a[tag=pr.target] unless score @s pr.plot = @s pr.plot_previous at @s run function pr:player/plot/move
#execute if score #plot_tick_-2_-4 pr.value matches 1 positioned -152 0 -344 run function namespace:tick_plot
#execute if score #plot_tick_-2_-4 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_-1_-4 pr.value positioned -104.0 -64 -392.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
execute unless score #plot_player_-1_-4 pr.value = #plot_tick_-1_-4 pr.value positioned -104.0 -64 -392.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
execute if score #plot_player_-1_-4 pr.value matches 1 if score #plot_tick_-1_-4 pr.value matches 0 positioned -56 0 -344 run function kirnt:plot_on
execute if score #plot_player_-1_-4 pr.value matches 0 if score #plot_tick_-1_-4 pr.value matches 1 positioned -56 0 -344 run function kirnt:plot_off
execute unless score #plot_player_-1_-4 pr.value = #plot_tick_-1_-4 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_-1_-4 pr.value = #plot_player_-1_-4 pr.value
execute if score #plot_tick_-1_-4 pr.value matches 1 positioned -100.0 -64 -388.0 run scoreboard players set @a[dx=87,dy=383,dz=87,tag=!pr.spectator] pr.plot 783
execute if score #plot_tick_-1_-4 pr.value matches 1 positioned -100.0 -64 -388.0 run tag @e[dx=87,dy=383,dz=87,tag=!pr.spectator] add pr.target
execute if score #plot_tick_-1_-4 pr.value matches 1 as @a[tag=pr.target] unless score @s pr.plot = @s pr.plot_previous at @s run function pr:player/plot/move
execute if score #plot_tick_-1_-4 pr.value matches 1 positioned -56 0 -344 run function kirnt:tick_plot
execute if score #plot_tick_-1_-4 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_0_-4 pr.value positioned -8.0 -64 -392.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
execute unless score #plot_player_0_-4 pr.value = #plot_tick_0_-4 pr.value positioned -8.0 -64 -392.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
execute if score #plot_player_0_-4 pr.value matches 1 if score #plot_tick_0_-4 pr.value matches 0 positioned 40 0 -344 run function sparkour:plot_on
execute if score #plot_player_0_-4 pr.value matches 0 if score #plot_tick_0_-4 pr.value matches 1 positioned 40 0 -344 run function sparkour:plot_off
execute unless score #plot_player_0_-4 pr.value = #plot_tick_0_-4 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_0_-4 pr.value = #plot_player_0_-4 pr.value
execute if score #plot_tick_0_-4 pr.value matches 1 positioned -4.0 -64 -388.0 run scoreboard players set @a[dx=87,dy=383,dz=87,tag=!pr.spectator] pr.plot 784
execute if score #plot_tick_0_-4 pr.value matches 1 positioned -4.0 -64 -388.0 run tag @e[dx=87,dy=383,dz=87,tag=!pr.spectator] add pr.target
execute if score #plot_tick_0_-4 pr.value matches 1 as @a[tag=pr.target] unless score @s pr.plot = @s pr.plot_previous at @s run function pr:player/plot/move
execute if score #plot_tick_0_-4 pr.value matches 1 positioned 40 0 -344 run function sparkour:tick_plot
execute if score #plot_tick_0_-4 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_1_-4 pr.value positioned 88.0 -64 -392.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
execute unless score #plot_player_1_-4 pr.value = #plot_tick_1_-4 pr.value positioned 88.0 -64 -392.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
execute if score #plot_player_1_-4 pr.value matches 1 if score #plot_tick_1_-4 pr.value matches 0 positioned 136 0 -344 run function klue007:plot_on
execute if score #plot_player_1_-4 pr.value matches 0 if score #plot_tick_1_-4 pr.value matches 1 positioned 136 0 -344 run function klue007:plot_off
execute unless score #plot_player_1_-4 pr.value = #plot_tick_1_-4 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_1_-4 pr.value = #plot_player_1_-4 pr.value
execute if score #plot_tick_1_-4 pr.value matches 1 positioned 92.0 -64 -388.0 run scoreboard players set @a[dx=87,dy=383,dz=87,tag=!pr.spectator] pr.plot 785
execute if score #plot_tick_1_-4 pr.value matches 1 positioned 92.0 -64 -388.0 run tag @e[dx=87,dy=383,dz=87,tag=!pr.spectator] add pr.target
execute if score #plot_tick_1_-4 pr.value matches 1 as @a[tag=pr.target] unless score @s pr.plot = @s pr.plot_previous at @s run function pr:player/plot/move
execute if score #plot_tick_1_-4 pr.value matches 1 positioned 136 0 -344 run function klue007:tick_plot
execute if score #plot_tick_1_-4 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_2_-4 pr.value positioned 184.0 -64 -392.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_2_-4 pr.value = #plot_tick_2_-4 pr.value positioned 184.0 -64 -392.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_2_-4 pr.value matches 1 if score #plot_tick_2_-4 pr.value matches 0 positioned 232 0 -344 run function namespace:plot_on
#execute if score #plot_player_2_-4 pr.value matches 0 if score #plot_tick_2_-4 pr.value matches 1 positioned 232 0 -344 run function namespace:plot_off
#execute unless score #plot_player_2_-4 pr.value = #plot_tick_2_-4 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_2_-4 pr.value = #plot_player_2_-4 pr.value
execute if score #plot_tick_2_-4 pr.value matches 1 positioned 188.0 -64 -388.0 run scoreboard players set @a[dx=87,dy=383,dz=87,tag=!pr.spectator] pr.plot 786
#execute if score #plot_tick_2_-4 pr.value matches 1 positioned 188.0 -64 -388.0 run tag @e[dx=87,dy=383,dz=87,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_2_-4 pr.value matches 1 as @a[tag=pr.target] unless score @s pr.plot = @s pr.plot_previous at @s run function pr:player/plot/move
#execute if score #plot_tick_2_-4 pr.value matches 1 positioned 232 0 -344 run function namespace:tick_plot
#execute if score #plot_tick_2_-4 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_3_-4 pr.value positioned 280.0 -64 -392.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
execute unless score #plot_player_3_-4 pr.value = #plot_tick_3_-4 pr.value positioned 280.0 -64 -392.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
execute if score #plot_player_3_-4 pr.value matches 1 if score #plot_tick_3_-4 pr.value matches 0 positioned 328 0 -344 run function kevinc:plot_on
execute if score #plot_player_3_-4 pr.value matches 0 if score #plot_tick_3_-4 pr.value matches 1 positioned 328 0 -344 run function kevinc:plot_off
execute unless score #plot_player_3_-4 pr.value = #plot_tick_3_-4 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_3_-4 pr.value = #plot_player_3_-4 pr.value
execute if score #plot_tick_3_-4 pr.value matches 1 positioned 284.0 -64 -388.0 run scoreboard players set @a[dx=87,dy=383,dz=87,tag=!pr.spectator] pr.plot 787
execute if score #plot_tick_3_-4 pr.value matches 1 positioned 284.0 -64 -388.0 run tag @e[dx=87,dy=383,dz=87,tag=!pr.spectator] add pr.target
execute if score #plot_tick_3_-4 pr.value matches 1 as @a[tag=pr.target] unless score @s pr.plot = @s pr.plot_previous at @s run function pr:player/plot/move
execute if score #plot_tick_3_-4 pr.value matches 1 positioned 328 0 -344 run function kevinc:tick_plot
execute if score #plot_tick_3_-4 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_-5_-3 pr.value positioned -488.0 -64 -296.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
execute unless score #plot_player_-5_-3 pr.value = #plot_tick_-5_-3 pr.value positioned -488.0 -64 -296.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
execute if score #plot_player_-5_-3 pr.value matches 1 if score #plot_tick_-5_-3 pr.value matches 0 positioned -440 0 -248 run function bowshot:plot_on
execute if score #plot_player_-5_-3 pr.value matches 0 if score #plot_tick_-5_-3 pr.value matches 1 positioned -440 0 -248 run function bowshot:plot_off
execute unless score #plot_player_-5_-3 pr.value = #plot_tick_-5_-3 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_-5_-3 pr.value = #plot_player_-5_-3 pr.value
execute if score #plot_tick_-5_-3 pr.value matches 1 positioned -484.0 -64 -292.0 run scoreboard players set @a[dx=87,dy=383,dz=87,tag=!pr.spectator] pr.plot 843
execute if score #plot_tick_-5_-3 pr.value matches 1 positioned -484.0 -64 -292.0 run tag @e[dx=87,dy=383,dz=87,tag=!pr.spectator] add pr.target
execute if score #plot_tick_-5_-3 pr.value matches 1 as @a[tag=pr.target] unless score @s pr.plot = @s pr.plot_previous at @s run function pr:player/plot/move
execute if score #plot_tick_-5_-3 pr.value matches 1 positioned -440 0 -248 run function bowshot:tick_plot
execute if score #plot_tick_-5_-3 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_-4_-3 pr.value positioned -392.0 -64 -296.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
execute unless score #plot_player_-4_-3 pr.value = #plot_tick_-4_-3 pr.value positioned -392.0 -64 -296.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
execute if score #plot_player_-4_-3 pr.value matches 1 if score #plot_tick_-4_-3 pr.value matches 0 positioned -344 0 -248 run function xekyt:plot_on
execute if score #plot_player_-4_-3 pr.value matches 0 if score #plot_tick_-4_-3 pr.value matches 1 positioned -344 0 -248 run function xekyt:plot_off
execute unless score #plot_player_-4_-3 pr.value = #plot_tick_-4_-3 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_-4_-3 pr.value = #plot_player_-4_-3 pr.value
execute if score #plot_tick_-4_-3 pr.value matches 1 positioned -388.0 -64 -292.0 run scoreboard players set @a[dx=87,dy=383,dz=87,tag=!pr.spectator] pr.plot 844
execute if score #plot_tick_-4_-3 pr.value matches 1 positioned -388.0 -64 -292.0 run tag @e[dx=87,dy=383,dz=87,tag=!pr.spectator] add pr.target
execute if score #plot_tick_-4_-3 pr.value matches 1 as @a[tag=pr.target] unless score @s pr.plot = @s pr.plot_previous at @s run function pr:player/plot/move
execute if score #plot_tick_-4_-3 pr.value matches 1 positioned -344 0 -248 run function xekyt:tick_plot
execute if score #plot_tick_-4_-3 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_-2_-3 pr.value positioned -200.0 -64 -296.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
scoreboard players set #check_loaded_bool pr.value 1
execute if score #plot_player_-2_-3 pr.value matches 0 if score #plot_tick_-2_-3 pr.value matches 0 run scoreboard players set #check_loaded_bool pr.value 0
scoreboard players set #chunk_loaded_bool pr.value 0
execute if score #check_loaded_bool pr.value matches 1 if loaded -176 0 -272 if loaded -144 0 -272 if loaded -176 0 -240 if loaded -144 0 -240 run scoreboard players set #chunk_loaded_bool pr.value 1
execute if score #plot_player_-2_-3 pr.value matches 1 if score #plot_tick_-2_-3 pr.value matches 0 run forceload add -176 -272
execute if score #plot_player_-2_-3 pr.value matches 1 if score #plot_tick_-2_-3 pr.value matches 0 run forceload add -144 -272
execute if score #plot_player_-2_-3 pr.value matches 1 if score #plot_tick_-2_-3 pr.value matches 0 run forceload add -176 -240
execute if score #plot_player_-2_-3 pr.value matches 1 if score #plot_tick_-2_-3 pr.value matches 0 run forceload add -144 -240
execute if score #plot_player_-2_-3 pr.value matches 0 if score #plot_tick_-2_-3 pr.value matches 1 run forceload remove -176 -272
execute if score #plot_player_-2_-3 pr.value matches 0 if score #plot_tick_-2_-3 pr.value matches 1 run forceload remove -144 -272
execute if score #plot_player_-2_-3 pr.value matches 0 if score #plot_tick_-2_-3 pr.value matches 1 run forceload remove -176 -240
execute if score #plot_player_-2_-3 pr.value matches 0 if score #plot_tick_-2_-3 pr.value matches 1 run forceload remove -144 -240
execute if score #chunk_loaded_bool pr.value matches 1 unless score #plot_player_-2_-3 pr.value = #plot_tick_-2_-3 pr.value positioned -200.0 -64 -296.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_player_-2_-3 pr.value matches 1 if score #plot_tick_-2_-3 pr.value matches 0 positioned -152 0 -248 run function technodono_plot_-2_-3:plot_on
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_player_-2_-3 pr.value matches 0 if score #plot_tick_-2_-3 pr.value matches 1 positioned -152 0 -248 run function technodono_plot_-2_-3:plot_off
execute if score #chunk_loaded_bool pr.value matches 1 unless score #plot_player_-2_-3 pr.value = #plot_tick_-2_-3 pr.value run tag @e[tag=pr.target] remove pr.target
execute if score #chunk_loaded_bool pr.value matches 1 run scoreboard players operation #plot_tick_-2_-3 pr.value = #plot_player_-2_-3 pr.value
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_-2_-3 pr.value matches 1 positioned -196.0 -64 -292.0 run scoreboard players set @a[dx=87,dy=383,dz=87,tag=!pr.spectator] pr.plot 846
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_-2_-3 pr.value matches 1 positioned -196.0 -64 -292.0 run tag @e[dx=87,dy=383,dz=87,tag=!pr.spectator] add pr.target
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_-2_-3 pr.value matches 1 as @a[tag=pr.target] unless score @s pr.plot = @s pr.plot_previous at @s run function pr:player/plot/move
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_-2_-3 pr.value matches 1 positioned -152 0 -248 run function technodono_plot_-2_-3:tick_plot
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_-2_-3 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_-1_-3 pr.value positioned -104.0 -64 -296.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
scoreboard players set #check_loaded_bool pr.value 1
execute if score #plot_player_-1_-3 pr.value matches 0 if score #plot_tick_-1_-3 pr.value matches 0 run scoreboard players set #check_loaded_bool pr.value 0
scoreboard players set #chunk_loaded_bool pr.value 0
execute if score #check_loaded_bool pr.value matches 1 if loaded -80 0 -272 if loaded -48 0 -272 if loaded -80 0 -240 if loaded -48 0 -240 run scoreboard players set #chunk_loaded_bool pr.value 1
execute if score #plot_player_-1_-3 pr.value matches 1 if score #plot_tick_-1_-3 pr.value matches 0 run forceload add -80 -272
execute if score #plot_player_-1_-3 pr.value matches 1 if score #plot_tick_-1_-3 pr.value matches 0 run forceload add -48 -272
execute if score #plot_player_-1_-3 pr.value matches 1 if score #plot_tick_-1_-3 pr.value matches 0 run forceload add -80 -240
execute if score #plot_player_-1_-3 pr.value matches 1 if score #plot_tick_-1_-3 pr.value matches 0 run forceload add -48 -240
execute if score #plot_player_-1_-3 pr.value matches 0 if score #plot_tick_-1_-3 pr.value matches 1 run forceload remove -80 -272
execute if score #plot_player_-1_-3 pr.value matches 0 if score #plot_tick_-1_-3 pr.value matches 1 run forceload remove -48 -272
execute if score #plot_player_-1_-3 pr.value matches 0 if score #plot_tick_-1_-3 pr.value matches 1 run forceload remove -80 -240
execute if score #plot_player_-1_-3 pr.value matches 0 if score #plot_tick_-1_-3 pr.value matches 1 run forceload remove -48 -240
execute if score #chunk_loaded_bool pr.value matches 1 unless score #plot_player_-1_-3 pr.value = #plot_tick_-1_-3 pr.value positioned -104.0 -64 -296.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_player_-1_-3 pr.value matches 1 if score #plot_tick_-1_-3 pr.value matches 0 positioned -56 0 -248 run function itspungpond98:plot_on
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_player_-1_-3 pr.value matches 0 if score #plot_tick_-1_-3 pr.value matches 1 positioned -56 0 -248 run function itspungpond98:plot_off
execute if score #chunk_loaded_bool pr.value matches 1 unless score #plot_player_-1_-3 pr.value = #plot_tick_-1_-3 pr.value run tag @e[tag=pr.target] remove pr.target
execute if score #chunk_loaded_bool pr.value matches 1 run scoreboard players operation #plot_tick_-1_-3 pr.value = #plot_player_-1_-3 pr.value
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_-1_-3 pr.value matches 1 positioned -100.0 -64 -292.0 run scoreboard players set @a[dx=87,dy=383,dz=87,tag=!pr.spectator] pr.plot 847
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_-1_-3 pr.value matches 1 positioned -100.0 -64 -292.0 run tag @e[dx=87,dy=383,dz=87,tag=!pr.spectator] add pr.target
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_-1_-3 pr.value matches 1 as @a[tag=pr.target] unless score @s pr.plot = @s pr.plot_previous at @s run function pr:player/plot/move
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_-1_-3 pr.value matches 1 positioned -56 0 -248 run function itspungpond98:tick_plot
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_-1_-3 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_0_-3 pr.value positioned -8.0 -64 -296.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
scoreboard players set #check_loaded_bool pr.value 1
execute if score #plot_player_0_-3 pr.value matches 0 if score #plot_tick_0_-3 pr.value matches 0 run scoreboard players set #check_loaded_bool pr.value 0
scoreboard players set #chunk_loaded_bool pr.value 0
execute if score #check_loaded_bool pr.value matches 1 if loaded 16 0 -272 if loaded 48 0 -272 if loaded 16 0 -240 if loaded 48 0 -240 run scoreboard players set #chunk_loaded_bool pr.value 1
execute if score #plot_player_0_-3 pr.value matches 1 if score #plot_tick_0_-3 pr.value matches 0 run forceload add 16 -272
execute if score #plot_player_0_-3 pr.value matches 1 if score #plot_tick_0_-3 pr.value matches 0 run forceload add 48 -272
execute if score #plot_player_0_-3 pr.value matches 1 if score #plot_tick_0_-3 pr.value matches 0 run forceload add 16 -240
execute if score #plot_player_0_-3 pr.value matches 1 if score #plot_tick_0_-3 pr.value matches 0 run forceload add 48 -240
execute if score #plot_player_0_-3 pr.value matches 0 if score #plot_tick_0_-3 pr.value matches 1 run forceload remove 16 -272
execute if score #plot_player_0_-3 pr.value matches 0 if score #plot_tick_0_-3 pr.value matches 1 run forceload remove 48 -272
execute if score #plot_player_0_-3 pr.value matches 0 if score #plot_tick_0_-3 pr.value matches 1 run forceload remove 16 -240
execute if score #plot_player_0_-3 pr.value matches 0 if score #plot_tick_0_-3 pr.value matches 1 run forceload remove 48 -240
execute if score #chunk_loaded_bool pr.value matches 1 unless score #plot_player_0_-3 pr.value = #plot_tick_0_-3 pr.value positioned -8.0 -64 -296.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_player_0_-3 pr.value matches 1 if score #plot_tick_0_-3 pr.value matches 0 positioned 40 0 -248 run function evilgodloki:plot_on
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_player_0_-3 pr.value matches 0 if score #plot_tick_0_-3 pr.value matches 1 positioned 40 0 -248 run function evilgodloki:plot_off
execute if score #chunk_loaded_bool pr.value matches 1 unless score #plot_player_0_-3 pr.value = #plot_tick_0_-3 pr.value run tag @e[tag=pr.target] remove pr.target
execute if score #chunk_loaded_bool pr.value matches 1 run scoreboard players operation #plot_tick_0_-3 pr.value = #plot_player_0_-3 pr.value
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_0_-3 pr.value matches 1 positioned -4.0 -64 -292.0 run scoreboard players set @a[dx=87,dy=383,dz=87,tag=!pr.spectator] pr.plot 848
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_0_-3 pr.value matches 1 positioned -4.0 -64 -292.0 run tag @e[dx=87,dy=383,dz=87,tag=!pr.spectator] add pr.target
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_0_-3 pr.value matches 1 as @a[tag=pr.target] unless score @s pr.plot = @s pr.plot_previous at @s run function pr:player/plot/move
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_0_-3 pr.value matches 1 positioned 40 0 -248 run function evilgodloki:tick_plot
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_0_-3 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_1_-3 pr.value positioned 88.0 -64 -296.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_1_-3 pr.value = #plot_tick_1_-3 pr.value positioned 88.0 -64 -296.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_1_-3 pr.value matches 1 if score #plot_tick_1_-3 pr.value matches 0 positioned 136 0 -248 run function namespace:plot_on
#execute if score #plot_player_1_-3 pr.value matches 0 if score #plot_tick_1_-3 pr.value matches 1 positioned 136 0 -248 run function namespace:plot_off
#execute unless score #plot_player_1_-3 pr.value = #plot_tick_1_-3 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_1_-3 pr.value = #plot_player_1_-3 pr.value
execute if score #plot_tick_1_-3 pr.value matches 1 positioned 92.0 -64 -292.0 run scoreboard players set @a[dx=87,dy=383,dz=87,tag=!pr.spectator] pr.plot 849
#execute if score #plot_tick_1_-3 pr.value matches 1 positioned 92.0 -64 -292.0 run tag @e[dx=87,dy=383,dz=87,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_1_-3 pr.value matches 1 as @a[tag=pr.target] unless score @s pr.plot = @s pr.plot_previous at @s run function pr:player/plot/move
#execute if score #plot_tick_1_-3 pr.value matches 1 positioned 136 0 -248 run function namespace:tick_plot
#execute if score #plot_tick_1_-3 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_2_-3 pr.value positioned 184.0 -64 -296.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
execute unless score #plot_player_2_-3 pr.value = #plot_tick_2_-3 pr.value positioned 184.0 -64 -296.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
execute if score #plot_player_2_-3 pr.value matches 1 if score #plot_tick_2_-3 pr.value matches 0 positioned 232 0 -248 run function intjungle:plot_on
execute if score #plot_player_2_-3 pr.value matches 0 if score #plot_tick_2_-3 pr.value matches 1 positioned 232 0 -248 run function intjungle:plot_off
execute unless score #plot_player_2_-3 pr.value = #plot_tick_2_-3 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_2_-3 pr.value = #plot_player_2_-3 pr.value
execute if score #plot_tick_2_-3 pr.value matches 1 positioned 188.0 -64 -292.0 run scoreboard players set @a[dx=87,dy=383,dz=87,tag=!pr.spectator] pr.plot 850
execute if score #plot_tick_2_-3 pr.value matches 1 positioned 188.0 -64 -292.0 run tag @e[dx=87,dy=383,dz=87,tag=!pr.spectator] add pr.target
execute if score #plot_tick_2_-3 pr.value matches 1 as @a[tag=pr.target] unless score @s pr.plot = @s pr.plot_previous at @s run function pr:player/plot/move
execute if score #plot_tick_2_-3 pr.value matches 1 positioned 232 0 -248 run function intjungle:tick_plot
execute if score #plot_tick_2_-3 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_4_-3 pr.value positioned 376.0 -64 -296.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_4_-3 pr.value = #plot_tick_4_-3 pr.value positioned 376.0 -64 -296.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_4_-3 pr.value matches 1 if score #plot_tick_4_-3 pr.value matches 0 positioned 424 0 -248 run function namespace:plot_on
#execute if score #plot_player_4_-3 pr.value matches 0 if score #plot_tick_4_-3 pr.value matches 1 positioned 424 0 -248 run function namespace:plot_off
#execute unless score #plot_player_4_-3 pr.value = #plot_tick_4_-3 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_4_-3 pr.value = #plot_player_4_-3 pr.value
execute if score #plot_tick_4_-3 pr.value matches 1 positioned 380.0 -64 -292.0 run scoreboard players set @a[dx=87,dy=383,dz=87,tag=!pr.spectator] pr.plot 852
#execute if score #plot_tick_4_-3 pr.value matches 1 positioned 380.0 -64 -292.0 run tag @e[dx=87,dy=383,dz=87,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_4_-3 pr.value matches 1 as @a[tag=pr.target] unless score @s pr.plot = @s pr.plot_previous at @s run function pr:player/plot/move
#execute if score #plot_tick_4_-3 pr.value matches 1 positioned 424 0 -248 run function namespace:tick_plot
#execute if score #plot_tick_4_-3 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_5_-3 pr.value positioned 472.0 -64 -296.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
scoreboard players set #check_loaded_bool pr.value 1
execute if score #plot_player_5_-3 pr.value matches 0 if score #plot_tick_5_-3 pr.value matches 0 run scoreboard players set #check_loaded_bool pr.value 0
scoreboard players set #chunk_loaded_bool pr.value 0
execute if score #check_loaded_bool pr.value matches 1 if loaded 496 0 -272 if loaded 528 0 -272 if loaded 496 0 -240 if loaded 528 0 -240 run scoreboard players set #chunk_loaded_bool pr.value 1
execute if score #plot_player_5_-3 pr.value matches 1 if score #plot_tick_5_-3 pr.value matches 0 run forceload add 496 -272
execute if score #plot_player_5_-3 pr.value matches 1 if score #plot_tick_5_-3 pr.value matches 0 run forceload add 528 -272
execute if score #plot_player_5_-3 pr.value matches 1 if score #plot_tick_5_-3 pr.value matches 0 run forceload add 496 -240
execute if score #plot_player_5_-3 pr.value matches 1 if score #plot_tick_5_-3 pr.value matches 0 run forceload add 528 -240
execute if score #plot_player_5_-3 pr.value matches 0 if score #plot_tick_5_-3 pr.value matches 1 run forceload remove 496 -272
execute if score #plot_player_5_-3 pr.value matches 0 if score #plot_tick_5_-3 pr.value matches 1 run forceload remove 528 -272
execute if score #plot_player_5_-3 pr.value matches 0 if score #plot_tick_5_-3 pr.value matches 1 run forceload remove 496 -240
execute if score #plot_player_5_-3 pr.value matches 0 if score #plot_tick_5_-3 pr.value matches 1 run forceload remove 528 -240
execute if score #chunk_loaded_bool pr.value matches 1 unless score #plot_player_5_-3 pr.value = #plot_tick_5_-3 pr.value positioned 472.0 -64 -296.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_player_5_-3 pr.value matches 1 if score #plot_tick_5_-3 pr.value matches 0 positioned 520 0 -248 run function tuntan:plot_on
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_player_5_-3 pr.value matches 0 if score #plot_tick_5_-3 pr.value matches 1 positioned 520 0 -248 run function tuntan:plot_off
execute if score #chunk_loaded_bool pr.value matches 1 unless score #plot_player_5_-3 pr.value = #plot_tick_5_-3 pr.value run tag @e[tag=pr.target] remove pr.target
execute if score #chunk_loaded_bool pr.value matches 1 run scoreboard players operation #plot_tick_5_-3 pr.value = #plot_player_5_-3 pr.value
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_5_-3 pr.value matches 1 positioned 476.0 -64 -292.0 run scoreboard players set @a[dx=87,dy=383,dz=87,tag=!pr.spectator] pr.plot 853
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_5_-3 pr.value matches 1 positioned 476.0 -64 -292.0 run tag @e[dx=87,dy=383,dz=87,tag=!pr.spectator] add pr.target
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_5_-3 pr.value matches 1 as @a[tag=pr.target] unless score @s pr.plot = @s pr.plot_previous at @s run function pr:player/plot/move
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_5_-3 pr.value matches 1 positioned 520 0 -248 run function tuntan:tick_plot
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_5_-3 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_-6_-2 pr.value positioned -584.0 -64 -200.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
execute unless score #plot_player_-6_-2 pr.value = #plot_tick_-6_-2 pr.value positioned -584.0 -64 -200.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
execute if score #plot_player_-6_-2 pr.value matches 1 if score #plot_tick_-6_-2 pr.value matches 0 positioned -536 0 -152 run function andreyhero:plot_on
execute if score #plot_player_-6_-2 pr.value matches 0 if score #plot_tick_-6_-2 pr.value matches 1 positioned -536 0 -152 run function andreyhero:plot_off
execute unless score #plot_player_-6_-2 pr.value = #plot_tick_-6_-2 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_-6_-2 pr.value = #plot_player_-6_-2 pr.value
execute if score #plot_tick_-6_-2 pr.value matches 1 positioned -580.0 -64 -196.0 run scoreboard players set @a[dx=87,dy=383,dz=87,tag=!pr.spectator] pr.plot 906
execute if score #plot_tick_-6_-2 pr.value matches 1 positioned -580.0 -64 -196.0 run tag @e[dx=87,dy=383,dz=87,tag=!pr.spectator] add pr.target
execute if score #plot_tick_-6_-2 pr.value matches 1 as @a[tag=pr.target] unless score @s pr.plot = @s pr.plot_previous at @s run function pr:player/plot/move
execute if score #plot_tick_-6_-2 pr.value matches 1 positioned -536 0 -152 run function andreyhero:tick_plot
execute if score #plot_tick_-6_-2 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_-5_-2 pr.value positioned -488.0 -64 -200.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
execute unless score #plot_player_-5_-2 pr.value = #plot_tick_-5_-2 pr.value positioned -488.0 -64 -200.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
execute if score #plot_player_-5_-2 pr.value matches 1 if score #plot_tick_-5_-2 pr.value matches 0 positioned -440 0 -152 run function artem:plot_on
execute if score #plot_player_-5_-2 pr.value matches 0 if score #plot_tick_-5_-2 pr.value matches 1 positioned -440 0 -152 run function artem:plot_off
execute unless score #plot_player_-5_-2 pr.value = #plot_tick_-5_-2 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_-5_-2 pr.value = #plot_player_-5_-2 pr.value
execute if score #plot_tick_-5_-2 pr.value matches 1 positioned -484.0 -64 -196.0 run scoreboard players set @a[dx=87,dy=383,dz=87,tag=!pr.spectator] pr.plot 907
execute if score #plot_tick_-5_-2 pr.value matches 1 positioned -484.0 -64 -196.0 run tag @e[dx=87,dy=383,dz=87,tag=!pr.spectator] add pr.target
execute if score #plot_tick_-5_-2 pr.value matches 1 as @a[tag=pr.target] unless score @s pr.plot = @s pr.plot_previous at @s run function pr:player/plot/move
execute if score #plot_tick_-5_-2 pr.value matches 1 positioned -440 0 -152 run function artem:tick_plot
execute if score #plot_tick_-5_-2 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_-4_-2 pr.value positioned -392.0 -64 -200.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
execute unless score #plot_player_-4_-2 pr.value = #plot_tick_-4_-2 pr.value positioned -392.0 -64 -200.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
execute if score #plot_player_-4_-2 pr.value matches 1 if score #plot_tick_-4_-2 pr.value matches 0 positioned -344 0 -152 run function fuzzbearplush:plot_on
execute if score #plot_player_-4_-2 pr.value matches 0 if score #plot_tick_-4_-2 pr.value matches 1 positioned -344 0 -152 run function fuzzbearplush:plot_off
execute unless score #plot_player_-4_-2 pr.value = #plot_tick_-4_-2 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_-4_-2 pr.value = #plot_player_-4_-2 pr.value
execute if score #plot_tick_-4_-2 pr.value matches 1 positioned -388.0 -64 -196.0 run scoreboard players set @a[dx=87,dy=383,dz=87,tag=!pr.spectator] pr.plot 908
execute if score #plot_tick_-4_-2 pr.value matches 1 positioned -388.0 -64 -196.0 run tag @e[dx=87,dy=383,dz=87,tag=!pr.spectator] add pr.target
execute if score #plot_tick_-4_-2 pr.value matches 1 as @a[tag=pr.target] unless score @s pr.plot = @s pr.plot_previous at @s run function pr:player/plot/move
execute if score #plot_tick_-4_-2 pr.value matches 1 positioned -344 0 -152 run function fuzzbearplush:tick_plot
execute if score #plot_tick_-4_-2 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_-3_-2 pr.value positioned -296.0 -64 -200.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
execute unless score #plot_player_-3_-2 pr.value = #plot_tick_-3_-2 pr.value positioned -296.0 -64 -200.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
execute if score #plot_player_-3_-2 pr.value matches 1 if score #plot_tick_-3_-2 pr.value matches 0 positioned -248 0 -152 run function reuge:plot_on
execute if score #plot_player_-3_-2 pr.value matches 0 if score #plot_tick_-3_-2 pr.value matches 1 positioned -248 0 -152 run function reuge:plot_off
execute unless score #plot_player_-3_-2 pr.value = #plot_tick_-3_-2 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_-3_-2 pr.value = #plot_player_-3_-2 pr.value
execute if score #plot_tick_-3_-2 pr.value matches 1 positioned -292.0 -64 -196.0 run scoreboard players set @a[dx=87,dy=383,dz=87,tag=!pr.spectator] pr.plot 909
execute if score #plot_tick_-3_-2 pr.value matches 1 positioned -292.0 -64 -196.0 run tag @e[dx=87,dy=383,dz=87,tag=!pr.spectator] add pr.target
execute if score #plot_tick_-3_-2 pr.value matches 1 as @a[tag=pr.target] unless score @s pr.plot = @s pr.plot_previous at @s run function pr:player/plot/move
execute if score #plot_tick_-3_-2 pr.value matches 1 positioned -248 0 -152 run function reuge:tick_plot
execute if score #plot_tick_-3_-2 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_-1_-2 pr.value positioned -104.0 -64 -200.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
scoreboard players set #check_loaded_bool pr.value 1
execute if score #plot_player_-1_-2 pr.value matches 0 if score #plot_tick_-1_-2 pr.value matches 0 run scoreboard players set #check_loaded_bool pr.value 0
scoreboard players set #chunk_loaded_bool pr.value 0
execute if score #check_loaded_bool pr.value matches 1 if loaded -80 0 -176 if loaded -48 0 -176 if loaded -80 0 -144 if loaded -48 0 -144 run scoreboard players set #chunk_loaded_bool pr.value 1
execute if score #plot_player_-1_-2 pr.value matches 1 if score #plot_tick_-1_-2 pr.value matches 0 run forceload add -80 -176
execute if score #plot_player_-1_-2 pr.value matches 1 if score #plot_tick_-1_-2 pr.value matches 0 run forceload add -48 -176
execute if score #plot_player_-1_-2 pr.value matches 1 if score #plot_tick_-1_-2 pr.value matches 0 run forceload add -80 -144
execute if score #plot_player_-1_-2 pr.value matches 1 if score #plot_tick_-1_-2 pr.value matches 0 run forceload add -48 -144
execute if score #plot_player_-1_-2 pr.value matches 0 if score #plot_tick_-1_-2 pr.value matches 1 run forceload remove -80 -176
execute if score #plot_player_-1_-2 pr.value matches 0 if score #plot_tick_-1_-2 pr.value matches 1 run forceload remove -48 -176
execute if score #plot_player_-1_-2 pr.value matches 0 if score #plot_tick_-1_-2 pr.value matches 1 run forceload remove -80 -144
execute if score #plot_player_-1_-2 pr.value matches 0 if score #plot_tick_-1_-2 pr.value matches 1 run forceload remove -48 -144
execute if score #chunk_loaded_bool pr.value matches 1 unless score #plot_player_-1_-2 pr.value = #plot_tick_-1_-2 pr.value positioned -104.0 -64 -200.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_player_-1_-2 pr.value matches 1 if score #plot_tick_-1_-2 pr.value matches 0 positioned -56 0 -152 run function maze_escape:plot_on
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_player_-1_-2 pr.value matches 0 if score #plot_tick_-1_-2 pr.value matches 1 positioned -56 0 -152 run function maze_escape:plot_off
execute if score #chunk_loaded_bool pr.value matches 1 unless score #plot_player_-1_-2 pr.value = #plot_tick_-1_-2 pr.value run tag @e[tag=pr.target] remove pr.target
execute if score #chunk_loaded_bool pr.value matches 1 run scoreboard players operation #plot_tick_-1_-2 pr.value = #plot_player_-1_-2 pr.value
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_-1_-2 pr.value matches 1 positioned -100.0 -64 -196.0 run scoreboard players set @a[dx=87,dy=383,dz=87,tag=!pr.spectator] pr.plot 911
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_-1_-2 pr.value matches 1 positioned -100.0 -64 -196.0 run tag @e[dx=87,dy=383,dz=87,tag=!pr.spectator] add pr.target
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_-1_-2 pr.value matches 1 as @a[tag=pr.target] unless score @s pr.plot = @s pr.plot_previous at @s run function pr:player/plot/move
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_-1_-2 pr.value matches 1 positioned -56 0 -152 run function maze_escape:tick_plot
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_-1_-2 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_1_-2 pr.value positioned 88.0 -64 -200.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
scoreboard players set #check_loaded_bool pr.value 1
execute if score #plot_player_1_-2 pr.value matches 0 if score #plot_tick_1_-2 pr.value matches 0 run scoreboard players set #check_loaded_bool pr.value 0
scoreboard players set #chunk_loaded_bool pr.value 0
execute if score #check_loaded_bool pr.value matches 1 if loaded 112 0 -176 if loaded 144 0 -176 if loaded 112 0 -144 if loaded 144 0 -144 run scoreboard players set #chunk_loaded_bool pr.value 1
execute if score #plot_player_1_-2 pr.value matches 1 if score #plot_tick_1_-2 pr.value matches 0 run forceload add 112 -176
execute if score #plot_player_1_-2 pr.value matches 1 if score #plot_tick_1_-2 pr.value matches 0 run forceload add 144 -176
execute if score #plot_player_1_-2 pr.value matches 1 if score #plot_tick_1_-2 pr.value matches 0 run forceload add 112 -144
execute if score #plot_player_1_-2 pr.value matches 1 if score #plot_tick_1_-2 pr.value matches 0 run forceload add 144 -144
execute if score #plot_player_1_-2 pr.value matches 0 if score #plot_tick_1_-2 pr.value matches 1 run forceload remove 112 -176
execute if score #plot_player_1_-2 pr.value matches 0 if score #plot_tick_1_-2 pr.value matches 1 run forceload remove 144 -176
execute if score #plot_player_1_-2 pr.value matches 0 if score #plot_tick_1_-2 pr.value matches 1 run forceload remove 112 -144
execute if score #plot_player_1_-2 pr.value matches 0 if score #plot_tick_1_-2 pr.value matches 1 run forceload remove 144 -144
execute if score #chunk_loaded_bool pr.value matches 1 unless score #plot_player_1_-2 pr.value = #plot_tick_1_-2 pr.value positioned 88.0 -64 -200.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_player_1_-2 pr.value matches 1 if score #plot_tick_1_-2 pr.value matches 0 positioned 136 0 -152 run function sliceolife:plot_on
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_player_1_-2 pr.value matches 0 if score #plot_tick_1_-2 pr.value matches 1 positioned 136 0 -152 run function sliceolife:plot_off
execute if score #chunk_loaded_bool pr.value matches 1 unless score #plot_player_1_-2 pr.value = #plot_tick_1_-2 pr.value run tag @e[tag=pr.target] remove pr.target
execute if score #chunk_loaded_bool pr.value matches 1 run scoreboard players operation #plot_tick_1_-2 pr.value = #plot_player_1_-2 pr.value
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_1_-2 pr.value matches 1 positioned 92.0 -64 -196.0 run scoreboard players set @a[dx=87,dy=383,dz=87,tag=!pr.spectator] pr.plot 913
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_1_-2 pr.value matches 1 positioned 92.0 -64 -196.0 run tag @e[dx=87,dy=383,dz=87,tag=!pr.spectator] add pr.target
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_1_-2 pr.value matches 1 as @a[tag=pr.target] unless score @s pr.plot = @s pr.plot_previous at @s run function pr:player/plot/move
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_1_-2 pr.value matches 1 positioned 136 0 -152 run function sliceolife:tick_plot
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_1_-2 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_3_-2 pr.value positioned 280.0 -64 -200.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_3_-2 pr.value = #plot_tick_3_-2 pr.value positioned 280.0 -64 -200.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_3_-2 pr.value matches 1 if score #plot_tick_3_-2 pr.value matches 0 positioned 328 0 -152 run function namespace:plot_on
#execute if score #plot_player_3_-2 pr.value matches 0 if score #plot_tick_3_-2 pr.value matches 1 positioned 328 0 -152 run function namespace:plot_off
#execute unless score #plot_player_3_-2 pr.value = #plot_tick_3_-2 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_3_-2 pr.value = #plot_player_3_-2 pr.value
execute if score #plot_tick_3_-2 pr.value matches 1 positioned 284.0 -64 -196.0 run scoreboard players set @a[dx=87,dy=383,dz=87,tag=!pr.spectator] pr.plot 915
#execute if score #plot_tick_3_-2 pr.value matches 1 positioned 284.0 -64 -196.0 run tag @e[dx=87,dy=383,dz=87,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_3_-2 pr.value matches 1 as @a[tag=pr.target] unless score @s pr.plot = @s pr.plot_previous at @s run function pr:player/plot/move
#execute if score #plot_tick_3_-2 pr.value matches 1 positioned 328 0 -152 run function namespace:tick_plot
#execute if score #plot_tick_3_-2 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_4_-2 pr.value positioned 376.0 -64 -200.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
scoreboard players set #check_loaded_bool pr.value 1
execute if score #plot_player_4_-2 pr.value matches 0 if score #plot_tick_4_-2 pr.value matches 0 run scoreboard players set #check_loaded_bool pr.value 0
scoreboard players set #chunk_loaded_bool pr.value 0
execute if score #check_loaded_bool pr.value matches 1 if loaded 400 0 -176 if loaded 432 0 -176 if loaded 400 0 -144 if loaded 432 0 -144 run scoreboard players set #chunk_loaded_bool pr.value 1
execute if score #plot_player_4_-2 pr.value matches 1 if score #plot_tick_4_-2 pr.value matches 0 run forceload add 400 -176
execute if score #plot_player_4_-2 pr.value matches 1 if score #plot_tick_4_-2 pr.value matches 0 run forceload add 432 -176
execute if score #plot_player_4_-2 pr.value matches 1 if score #plot_tick_4_-2 pr.value matches 0 run forceload add 400 -144
execute if score #plot_player_4_-2 pr.value matches 1 if score #plot_tick_4_-2 pr.value matches 0 run forceload add 432 -144
execute if score #plot_player_4_-2 pr.value matches 0 if score #plot_tick_4_-2 pr.value matches 1 run forceload remove 400 -176
execute if score #plot_player_4_-2 pr.value matches 0 if score #plot_tick_4_-2 pr.value matches 1 run forceload remove 432 -176
execute if score #plot_player_4_-2 pr.value matches 0 if score #plot_tick_4_-2 pr.value matches 1 run forceload remove 400 -144
execute if score #plot_player_4_-2 pr.value matches 0 if score #plot_tick_4_-2 pr.value matches 1 run forceload remove 432 -144
execute if score #chunk_loaded_bool pr.value matches 1 unless score #plot_player_4_-2 pr.value = #plot_tick_4_-2 pr.value positioned 376.0 -64 -200.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_player_4_-2 pr.value matches 1 if score #plot_tick_4_-2 pr.value matches 0 positioned 424 0 -152 run function ykw:plot_on
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_player_4_-2 pr.value matches 0 if score #plot_tick_4_-2 pr.value matches 1 positioned 424 0 -152 run function ykw:plot_off
execute if score #chunk_loaded_bool pr.value matches 1 unless score #plot_player_4_-2 pr.value = #plot_tick_4_-2 pr.value run tag @e[tag=pr.target] remove pr.target
execute if score #chunk_loaded_bool pr.value matches 1 run scoreboard players operation #plot_tick_4_-2 pr.value = #plot_player_4_-2 pr.value
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_4_-2 pr.value matches 1 positioned 380.0 -64 -196.0 run scoreboard players set @a[dx=87,dy=383,dz=87,tag=!pr.spectator] pr.plot 916
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_4_-2 pr.value matches 1 positioned 380.0 -64 -196.0 run tag @e[dx=87,dy=383,dz=87,tag=!pr.spectator] add pr.target
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_4_-2 pr.value matches 1 as @a[tag=pr.target] unless score @s pr.plot = @s pr.plot_previous at @s run function pr:player/plot/move
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_4_-2 pr.value matches 1 positioned 424 0 -152 run function ykw:tick_plot
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_4_-2 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_5_-2 pr.value positioned 472.0 -64 -200.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_5_-2 pr.value = #plot_tick_5_-2 pr.value positioned 472.0 -64 -200.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_5_-2 pr.value matches 1 if score #plot_tick_5_-2 pr.value matches 0 positioned 520 0 -152 run function namespace:plot_on
#execute if score #plot_player_5_-2 pr.value matches 0 if score #plot_tick_5_-2 pr.value matches 1 positioned 520 0 -152 run function namespace:plot_off
#execute unless score #plot_player_5_-2 pr.value = #plot_tick_5_-2 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_5_-2 pr.value = #plot_player_5_-2 pr.value
execute if score #plot_tick_5_-2 pr.value matches 1 positioned 476.0 -64 -196.0 run scoreboard players set @a[dx=87,dy=383,dz=87,tag=!pr.spectator] pr.plot 917
#execute if score #plot_tick_5_-2 pr.value matches 1 positioned 476.0 -64 -196.0 run tag @e[dx=87,dy=383,dz=87,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_5_-2 pr.value matches 1 as @a[tag=pr.target] unless score @s pr.plot = @s pr.plot_previous at @s run function pr:player/plot/move
#execute if score #plot_tick_5_-2 pr.value matches 1 positioned 520 0 -152 run function namespace:tick_plot
#execute if score #plot_tick_5_-2 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_6_-2 pr.value positioned 568.0 -64 -200.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
scoreboard players set #check_loaded_bool pr.value 1
execute if score #plot_player_6_-2 pr.value matches 0 if score #plot_tick_6_-2 pr.value matches 0 run scoreboard players set #check_loaded_bool pr.value 0
scoreboard players set #chunk_loaded_bool pr.value 0
execute if score #check_loaded_bool pr.value matches 1 if loaded 592 0 -176 if loaded 624 0 -176 if loaded 592 0 -144 if loaded 624 0 -144 run scoreboard players set #chunk_loaded_bool pr.value 1
execute if score #plot_player_6_-2 pr.value matches 1 if score #plot_tick_6_-2 pr.value matches 0 run forceload add 592 -176
execute if score #plot_player_6_-2 pr.value matches 1 if score #plot_tick_6_-2 pr.value matches 0 run forceload add 624 -176
execute if score #plot_player_6_-2 pr.value matches 1 if score #plot_tick_6_-2 pr.value matches 0 run forceload add 592 -144
execute if score #plot_player_6_-2 pr.value matches 1 if score #plot_tick_6_-2 pr.value matches 0 run forceload add 624 -144
execute if score #plot_player_6_-2 pr.value matches 0 if score #plot_tick_6_-2 pr.value matches 1 run forceload remove 592 -176
execute if score #plot_player_6_-2 pr.value matches 0 if score #plot_tick_6_-2 pr.value matches 1 run forceload remove 624 -176
execute if score #plot_player_6_-2 pr.value matches 0 if score #plot_tick_6_-2 pr.value matches 1 run forceload remove 592 -144
execute if score #plot_player_6_-2 pr.value matches 0 if score #plot_tick_6_-2 pr.value matches 1 run forceload remove 624 -144
execute if score #chunk_loaded_bool pr.value matches 1 unless score #plot_player_6_-2 pr.value = #plot_tick_6_-2 pr.value positioned 568.0 -64 -200.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_player_6_-2 pr.value matches 1 if score #plot_tick_6_-2 pr.value matches 0 positioned 616 0 -152 run function ganymede:plot_on
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_player_6_-2 pr.value matches 0 if score #plot_tick_6_-2 pr.value matches 1 positioned 616 0 -152 run function ganymede:plot_off
execute if score #chunk_loaded_bool pr.value matches 1 unless score #plot_player_6_-2 pr.value = #plot_tick_6_-2 pr.value run tag @e[tag=pr.target] remove pr.target
execute if score #chunk_loaded_bool pr.value matches 1 run scoreboard players operation #plot_tick_6_-2 pr.value = #plot_player_6_-2 pr.value
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_6_-2 pr.value matches 1 positioned 572.0 -64 -196.0 run scoreboard players set @a[dx=87,dy=383,dz=87,tag=!pr.spectator] pr.plot 918
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_6_-2 pr.value matches 1 positioned 572.0 -64 -196.0 run tag @e[dx=87,dy=383,dz=87,tag=!pr.spectator] add pr.target
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_6_-2 pr.value matches 1 as @a[tag=pr.target] unless score @s pr.plot = @s pr.plot_previous at @s run function pr:player/plot/move
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_6_-2 pr.value matches 1 positioned 616 0 -152 run function ganymede:tick_plot
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_6_-2 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_-5_-1 pr.value positioned -488.0 -64 -104.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_-5_-1 pr.value = #plot_tick_-5_-1 pr.value positioned -488.0 -64 -104.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_-5_-1 pr.value matches 1 if score #plot_tick_-5_-1 pr.value matches 0 positioned -440 0 -56 run function namespace:plot_on
#execute if score #plot_player_-5_-1 pr.value matches 0 if score #plot_tick_-5_-1 pr.value matches 1 positioned -440 0 -56 run function namespace:plot_off
#execute unless score #plot_player_-5_-1 pr.value = #plot_tick_-5_-1 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_-5_-1 pr.value = #plot_player_-5_-1 pr.value
execute if score #plot_tick_-5_-1 pr.value matches 1 positioned -484.0 -64 -100.0 run scoreboard players set @a[dx=87,dy=383,dz=87,tag=!pr.spectator] pr.plot 971
#execute if score #plot_tick_-5_-1 pr.value matches 1 positioned -484.0 -64 -100.0 run tag @e[dx=87,dy=383,dz=87,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_-5_-1 pr.value matches 1 as @a[tag=pr.target] unless score @s pr.plot = @s pr.plot_previous at @s run function pr:player/plot/move
#execute if score #plot_tick_-5_-1 pr.value matches 1 positioned -440 0 -56 run function namespace:tick_plot
#execute if score #plot_tick_-5_-1 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_-4_-1 pr.value positioned -392.0 -64 -104.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
scoreboard players set #check_loaded_bool pr.value 1
execute if score #plot_player_-4_-1 pr.value matches 0 if score #plot_tick_-4_-1 pr.value matches 0 run scoreboard players set #check_loaded_bool pr.value 0
scoreboard players set #chunk_loaded_bool pr.value 0
execute if score #check_loaded_bool pr.value matches 1 if loaded -368 0 -80 if loaded -336 0 -80 if loaded -368 0 -48 if loaded -336 0 -48 run scoreboard players set #chunk_loaded_bool pr.value 1
execute if score #plot_player_-4_-1 pr.value matches 1 if score #plot_tick_-4_-1 pr.value matches 0 run forceload add -368 -80
execute if score #plot_player_-4_-1 pr.value matches 1 if score #plot_tick_-4_-1 pr.value matches 0 run forceload add -336 -80
execute if score #plot_player_-4_-1 pr.value matches 1 if score #plot_tick_-4_-1 pr.value matches 0 run forceload add -368 -48
execute if score #plot_player_-4_-1 pr.value matches 1 if score #plot_tick_-4_-1 pr.value matches 0 run forceload add -336 -48
execute if score #plot_player_-4_-1 pr.value matches 0 if score #plot_tick_-4_-1 pr.value matches 1 run forceload remove -368 -80
execute if score #plot_player_-4_-1 pr.value matches 0 if score #plot_tick_-4_-1 pr.value matches 1 run forceload remove -336 -80
execute if score #plot_player_-4_-1 pr.value matches 0 if score #plot_tick_-4_-1 pr.value matches 1 run forceload remove -368 -48
execute if score #plot_player_-4_-1 pr.value matches 0 if score #plot_tick_-4_-1 pr.value matches 1 run forceload remove -336 -48
execute if score #chunk_loaded_bool pr.value matches 1 unless score #plot_player_-4_-1 pr.value = #plot_tick_-4_-1 pr.value positioned -392.0 -64 -104.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_player_-4_-1 pr.value matches 1 if score #plot_tick_-4_-1 pr.value matches 0 positioned -344 0 -56 run function warshito:plot_on
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_player_-4_-1 pr.value matches 0 if score #plot_tick_-4_-1 pr.value matches 1 positioned -344 0 -56 run function warshito:plot_off
execute if score #chunk_loaded_bool pr.value matches 1 unless score #plot_player_-4_-1 pr.value = #plot_tick_-4_-1 pr.value run tag @e[tag=pr.target] remove pr.target
execute if score #chunk_loaded_bool pr.value matches 1 run scoreboard players operation #plot_tick_-4_-1 pr.value = #plot_player_-4_-1 pr.value
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_-4_-1 pr.value matches 1 positioned -388.0 -64 -100.0 run scoreboard players set @a[dx=87,dy=383,dz=87,tag=!pr.spectator] pr.plot 972
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_-4_-1 pr.value matches 1 positioned -388.0 -64 -100.0 run tag @e[dx=87,dy=383,dz=87,tag=!pr.spectator] add pr.target
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_-4_-1 pr.value matches 1 as @a[tag=pr.target] unless score @s pr.plot = @s pr.plot_previous at @s run function pr:player/plot/move
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_-4_-1 pr.value matches 1 positioned -344 0 -56 run function warshito:tick_plot
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_-4_-1 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_-3_-1 pr.value positioned -296.0 -64 -104.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
scoreboard players set #check_loaded_bool pr.value 1
execute if score #plot_player_-3_-1 pr.value matches 0 if score #plot_tick_-3_-1 pr.value matches 0 run scoreboard players set #check_loaded_bool pr.value 0
scoreboard players set #chunk_loaded_bool pr.value 0
execute if score #check_loaded_bool pr.value matches 1 if loaded -272 0 -80 if loaded -240 0 -80 if loaded -272 0 -48 if loaded -240 0 -48 run scoreboard players set #chunk_loaded_bool pr.value 1
execute if score #plot_player_-3_-1 pr.value matches 1 if score #plot_tick_-3_-1 pr.value matches 0 run forceload add -272 -80
execute if score #plot_player_-3_-1 pr.value matches 1 if score #plot_tick_-3_-1 pr.value matches 0 run forceload add -240 -80
execute if score #plot_player_-3_-1 pr.value matches 1 if score #plot_tick_-3_-1 pr.value matches 0 run forceload add -272 -48
execute if score #plot_player_-3_-1 pr.value matches 1 if score #plot_tick_-3_-1 pr.value matches 0 run forceload add -240 -48
execute if score #plot_player_-3_-1 pr.value matches 0 if score #plot_tick_-3_-1 pr.value matches 1 run forceload remove -272 -80
execute if score #plot_player_-3_-1 pr.value matches 0 if score #plot_tick_-3_-1 pr.value matches 1 run forceload remove -240 -80
execute if score #plot_player_-3_-1 pr.value matches 0 if score #plot_tick_-3_-1 pr.value matches 1 run forceload remove -272 -48
execute if score #plot_player_-3_-1 pr.value matches 0 if score #plot_tick_-3_-1 pr.value matches 1 run forceload remove -240 -48
execute if score #chunk_loaded_bool pr.value matches 1 unless score #plot_player_-3_-1 pr.value = #plot_tick_-3_-1 pr.value positioned -296.0 -64 -104.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_player_-3_-1 pr.value matches 1 if score #plot_tick_-3_-1 pr.value matches 0 positioned -248 0 -56 run function cds28:plot_on
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_player_-3_-1 pr.value matches 0 if score #plot_tick_-3_-1 pr.value matches 1 positioned -248 0 -56 run function cds28:plot_off
execute if score #chunk_loaded_bool pr.value matches 1 unless score #plot_player_-3_-1 pr.value = #plot_tick_-3_-1 pr.value run tag @e[tag=pr.target] remove pr.target
execute if score #chunk_loaded_bool pr.value matches 1 run scoreboard players operation #plot_tick_-3_-1 pr.value = #plot_player_-3_-1 pr.value
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_-3_-1 pr.value matches 1 positioned -292.0 -64 -100.0 run scoreboard players set @a[dx=87,dy=383,dz=87,tag=!pr.spectator] pr.plot 973
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_-3_-1 pr.value matches 1 positioned -292.0 -64 -100.0 run tag @e[dx=87,dy=383,dz=87,tag=!pr.spectator] add pr.target
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_-3_-1 pr.value matches 1 as @a[tag=pr.target] unless score @s pr.plot = @s pr.plot_previous at @s run function pr:player/plot/move
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_-3_-1 pr.value matches 1 positioned -248 0 -56 run function cds28:tick_plot
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_-3_-1 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_-2_-1 pr.value positioned -200.0 -64 -104.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
execute unless score #plot_player_-2_-1 pr.value = #plot_tick_-2_-1 pr.value positioned -200.0 -64 -104.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
execute if score #plot_player_-2_-1 pr.value matches 1 if score #plot_tick_-2_-1 pr.value matches 0 positioned -152 0 -56 run function time_stream:plot_on
execute if score #plot_player_-2_-1 pr.value matches 0 if score #plot_tick_-2_-1 pr.value matches 1 positioned -152 0 -56 run function time_stream:plot_off
execute unless score #plot_player_-2_-1 pr.value = #plot_tick_-2_-1 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_-2_-1 pr.value = #plot_player_-2_-1 pr.value
execute if score #plot_tick_-2_-1 pr.value matches 1 positioned -196.0 -64 -100.0 run scoreboard players set @a[dx=87,dy=383,dz=87,tag=!pr.spectator] pr.plot 974
execute if score #plot_tick_-2_-1 pr.value matches 1 positioned -196.0 -64 -100.0 run tag @e[dx=87,dy=383,dz=87,tag=!pr.spectator] add pr.target
execute if score #plot_tick_-2_-1 pr.value matches 1 as @a[tag=pr.target] unless score @s pr.plot = @s pr.plot_previous at @s run function pr:player/plot/move
execute if score #plot_tick_-2_-1 pr.value matches 1 positioned -152 0 -56 run function time_stream:tick_plot
execute if score #plot_tick_-2_-1 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_-1_-1 pr.value positioned -104.0 -64 -104.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_-1_-1 pr.value = #plot_tick_-1_-1 pr.value positioned -104.0 -64 -104.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_-1_-1 pr.value matches 1 if score #plot_tick_-1_-1 pr.value matches 0 positioned -56 0 -56 run function namespace:plot_on
#execute if score #plot_player_-1_-1 pr.value matches 0 if score #plot_tick_-1_-1 pr.value matches 1 positioned -56 0 -56 run function namespace:plot_off
#execute unless score #plot_player_-1_-1 pr.value = #plot_tick_-1_-1 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_-1_-1 pr.value = #plot_player_-1_-1 pr.value
execute if score #plot_tick_-1_-1 pr.value matches 1 positioned -100.0 -64 -100.0 run scoreboard players set @a[dx=87,dy=383,dz=87,tag=!pr.spectator] pr.plot 975
#execute if score #plot_tick_-1_-1 pr.value matches 1 positioned -100.0 -64 -100.0 run tag @e[dx=87,dy=383,dz=87,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_-1_-1 pr.value matches 1 as @a[tag=pr.target] unless score @s pr.plot = @s pr.plot_previous at @s run function pr:player/plot/move
#execute if score #plot_tick_-1_-1 pr.value matches 1 positioned -56 0 -56 run function namespace:tick_plot
#execute if score #plot_tick_-1_-1 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_0_-1 pr.value positioned -8.0 -64 -104.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_0_-1 pr.value = #plot_tick_0_-1 pr.value positioned -8.0 -64 -104.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_0_-1 pr.value matches 1 if score #plot_tick_0_-1 pr.value matches 0 positioned 40 0 -56 run function namespace:plot_on
#execute if score #plot_player_0_-1 pr.value matches 0 if score #plot_tick_0_-1 pr.value matches 1 positioned 40 0 -56 run function namespace:plot_off
#execute unless score #plot_player_0_-1 pr.value = #plot_tick_0_-1 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_0_-1 pr.value = #plot_player_0_-1 pr.value
execute if score #plot_tick_0_-1 pr.value matches 1 positioned -4.0 -64 -100.0 run scoreboard players set @a[dx=87,dy=383,dz=87,tag=!pr.spectator] pr.plot 976
#execute if score #plot_tick_0_-1 pr.value matches 1 positioned -4.0 -64 -100.0 run tag @e[dx=87,dy=383,dz=87,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_0_-1 pr.value matches 1 as @a[tag=pr.target] unless score @s pr.plot = @s pr.plot_previous at @s run function pr:player/plot/move
#execute if score #plot_tick_0_-1 pr.value matches 1 positioned 40 0 -56 run function namespace:tick_plot
#execute if score #plot_tick_0_-1 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_1_-1 pr.value positioned 88.0 -64 -104.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
scoreboard players set #check_loaded_bool pr.value 1
execute if score #plot_player_1_-1 pr.value matches 0 if score #plot_tick_1_-1 pr.value matches 0 run scoreboard players set #check_loaded_bool pr.value 0
scoreboard players set #chunk_loaded_bool pr.value 0
execute if score #check_loaded_bool pr.value matches 1 if loaded 112 0 -80 if loaded 144 0 -80 if loaded 112 0 -48 if loaded 144 0 -48 run scoreboard players set #chunk_loaded_bool pr.value 1
execute if score #plot_player_1_-1 pr.value matches 1 if score #plot_tick_1_-1 pr.value matches 0 run forceload add 112 -80
execute if score #plot_player_1_-1 pr.value matches 1 if score #plot_tick_1_-1 pr.value matches 0 run forceload add 144 -80
execute if score #plot_player_1_-1 pr.value matches 1 if score #plot_tick_1_-1 pr.value matches 0 run forceload add 112 -48
execute if score #plot_player_1_-1 pr.value matches 1 if score #plot_tick_1_-1 pr.value matches 0 run forceload add 144 -48
execute if score #plot_player_1_-1 pr.value matches 0 if score #plot_tick_1_-1 pr.value matches 1 run forceload remove 112 -80
execute if score #plot_player_1_-1 pr.value matches 0 if score #plot_tick_1_-1 pr.value matches 1 run forceload remove 144 -80
execute if score #plot_player_1_-1 pr.value matches 0 if score #plot_tick_1_-1 pr.value matches 1 run forceload remove 112 -48
execute if score #plot_player_1_-1 pr.value matches 0 if score #plot_tick_1_-1 pr.value matches 1 run forceload remove 144 -48
execute if score #chunk_loaded_bool pr.value matches 1 unless score #plot_player_1_-1 pr.value = #plot_tick_1_-1 pr.value positioned 88.0 -64 -104.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_player_1_-1 pr.value matches 1 if score #plot_tick_1_-1 pr.value matches 0 positioned 136 0 -56 run function theswagunicorn2:plot_on
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_player_1_-1 pr.value matches 0 if score #plot_tick_1_-1 pr.value matches 1 positioned 136 0 -56 run function theswagunicorn2:plot_off
execute if score #chunk_loaded_bool pr.value matches 1 unless score #plot_player_1_-1 pr.value = #plot_tick_1_-1 pr.value run tag @e[tag=pr.target] remove pr.target
execute if score #chunk_loaded_bool pr.value matches 1 run scoreboard players operation #plot_tick_1_-1 pr.value = #plot_player_1_-1 pr.value
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_1_-1 pr.value matches 1 positioned 92.0 -64 -100.0 run scoreboard players set @a[dx=87,dy=383,dz=87,tag=!pr.spectator] pr.plot 977
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_1_-1 pr.value matches 1 positioned 92.0 -64 -100.0 run tag @e[dx=87,dy=383,dz=87,tag=!pr.spectator] add pr.target
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_1_-1 pr.value matches 1 as @a[tag=pr.target] unless score @s pr.plot = @s pr.plot_previous at @s run function pr:player/plot/move
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_1_-1 pr.value matches 1 positioned 136 0 -56 run function theswagunicorn2:tick_plot
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_1_-1 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_2_-1 pr.value positioned 184.0 -64 -104.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_2_-1 pr.value = #plot_tick_2_-1 pr.value positioned 184.0 -64 -104.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_2_-1 pr.value matches 1 if score #plot_tick_2_-1 pr.value matches 0 positioned 232 0 -56 run function namespace:plot_on
#execute if score #plot_player_2_-1 pr.value matches 0 if score #plot_tick_2_-1 pr.value matches 1 positioned 232 0 -56 run function namespace:plot_off
#execute unless score #plot_player_2_-1 pr.value = #plot_tick_2_-1 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_2_-1 pr.value = #plot_player_2_-1 pr.value
execute if score #plot_tick_2_-1 pr.value matches 1 positioned 188.0 -64 -100.0 run scoreboard players set @a[dx=87,dy=383,dz=87,tag=!pr.spectator] pr.plot 978
#execute if score #plot_tick_2_-1 pr.value matches 1 positioned 188.0 -64 -100.0 run tag @e[dx=87,dy=383,dz=87,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_2_-1 pr.value matches 1 as @a[tag=pr.target] unless score @s pr.plot = @s pr.plot_previous at @s run function pr:player/plot/move
#execute if score #plot_tick_2_-1 pr.value matches 1 positioned 232 0 -56 run function namespace:tick_plot
#execute if score #plot_tick_2_-1 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_3_-1 pr.value positioned 280.0 -64 -104.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
execute unless score #plot_player_3_-1 pr.value = #plot_tick_3_-1 pr.value positioned 280.0 -64 -104.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
execute if score #plot_player_3_-1 pr.value matches 1 if score #plot_tick_3_-1 pr.value matches 0 positioned 328 0 -56 run function dominexis:plot_on
execute if score #plot_player_3_-1 pr.value matches 0 if score #plot_tick_3_-1 pr.value matches 1 positioned 328 0 -56 run function dominexis:plot_off
execute unless score #plot_player_3_-1 pr.value = #plot_tick_3_-1 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_3_-1 pr.value = #plot_player_3_-1 pr.value
execute if score #plot_tick_3_-1 pr.value matches 1 positioned 284.0 -64 -100.0 run scoreboard players set @a[dx=87,dy=383,dz=87,tag=!pr.spectator] pr.plot 979
execute if score #plot_tick_3_-1 pr.value matches 1 positioned 284.0 -64 -100.0 run tag @e[dx=87,dy=383,dz=87,tag=!pr.spectator] add pr.target
execute if score #plot_tick_3_-1 pr.value matches 1 as @a[tag=pr.target] unless score @s pr.plot = @s pr.plot_previous at @s run function pr:player/plot/move
execute if score #plot_tick_3_-1 pr.value matches 1 positioned 328 0 -56 run function dominexis:tick_plot
execute if score #plot_tick_3_-1 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_4_-1 pr.value positioned 376.0 -64 -104.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
execute unless score #plot_player_4_-1 pr.value = #plot_tick_4_-1 pr.value positioned 376.0 -64 -104.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
execute if score #plot_player_4_-1 pr.value matches 1 if score #plot_tick_4_-1 pr.value matches 0 positioned 424 0 -56 run function rooftop_adventure_ra:plot_on
execute if score #plot_player_4_-1 pr.value matches 0 if score #plot_tick_4_-1 pr.value matches 1 positioned 424 0 -56 run function rooftop_adventure_ra:plot_off
execute unless score #plot_player_4_-1 pr.value = #plot_tick_4_-1 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_4_-1 pr.value = #plot_player_4_-1 pr.value
execute if score #plot_tick_4_-1 pr.value matches 1 positioned 380.0 -64 -100.0 run scoreboard players set @a[dx=87,dy=383,dz=87,tag=!pr.spectator] pr.plot 980
execute if score #plot_tick_4_-1 pr.value matches 1 positioned 380.0 -64 -100.0 run tag @e[dx=87,dy=383,dz=87,tag=!pr.spectator] add pr.target
execute if score #plot_tick_4_-1 pr.value matches 1 as @a[tag=pr.target] unless score @s pr.plot = @s pr.plot_previous at @s run function pr:player/plot/move
execute if score #plot_tick_4_-1 pr.value matches 1 positioned 424 0 -56 run function rooftop_adventure_ra:tick_plot
execute if score #plot_tick_4_-1 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_5_-1 pr.value positioned 472.0 -64 -104.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
scoreboard players set #check_loaded_bool pr.value 1
execute if score #plot_player_5_-1 pr.value matches 0 if score #plot_tick_5_-1 pr.value matches 0 run scoreboard players set #check_loaded_bool pr.value 0
scoreboard players set #chunk_loaded_bool pr.value 0
execute if score #check_loaded_bool pr.value matches 1 if loaded 496 0 -80 if loaded 528 0 -80 if loaded 496 0 -48 if loaded 528 0 -48 run scoreboard players set #chunk_loaded_bool pr.value 1
execute if score #plot_player_5_-1 pr.value matches 1 if score #plot_tick_5_-1 pr.value matches 0 run forceload add 496 -80
execute if score #plot_player_5_-1 pr.value matches 1 if score #plot_tick_5_-1 pr.value matches 0 run forceload add 528 -80
execute if score #plot_player_5_-1 pr.value matches 1 if score #plot_tick_5_-1 pr.value matches 0 run forceload add 496 -48
execute if score #plot_player_5_-1 pr.value matches 1 if score #plot_tick_5_-1 pr.value matches 0 run forceload add 528 -48
execute if score #plot_player_5_-1 pr.value matches 0 if score #plot_tick_5_-1 pr.value matches 1 run forceload remove 496 -80
execute if score #plot_player_5_-1 pr.value matches 0 if score #plot_tick_5_-1 pr.value matches 1 run forceload remove 528 -80
execute if score #plot_player_5_-1 pr.value matches 0 if score #plot_tick_5_-1 pr.value matches 1 run forceload remove 496 -48
execute if score #plot_player_5_-1 pr.value matches 0 if score #plot_tick_5_-1 pr.value matches 1 run forceload remove 528 -48
execute if score #chunk_loaded_bool pr.value matches 1 unless score #plot_player_5_-1 pr.value = #plot_tick_5_-1 pr.value positioned 472.0 -64 -104.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_player_5_-1 pr.value matches 1 if score #plot_tick_5_-1 pr.value matches 0 positioned 520 0 -56 run function frostcobra:plot_on
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_player_5_-1 pr.value matches 0 if score #plot_tick_5_-1 pr.value matches 1 positioned 520 0 -56 run function frostcobra:plot_off
execute if score #chunk_loaded_bool pr.value matches 1 unless score #plot_player_5_-1 pr.value = #plot_tick_5_-1 pr.value run tag @e[tag=pr.target] remove pr.target
execute if score #chunk_loaded_bool pr.value matches 1 run scoreboard players operation #plot_tick_5_-1 pr.value = #plot_player_5_-1 pr.value
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_5_-1 pr.value matches 1 positioned 476.0 -64 -100.0 run scoreboard players set @a[dx=87,dy=383,dz=87,tag=!pr.spectator] pr.plot 981
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_5_-1 pr.value matches 1 positioned 476.0 -64 -100.0 run tag @e[dx=87,dy=383,dz=87,tag=!pr.spectator] add pr.target
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_5_-1 pr.value matches 1 as @a[tag=pr.target] unless score @s pr.plot = @s pr.plot_previous at @s run function pr:player/plot/move
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_5_-1 pr.value matches 1 positioned 520 0 -56 run function frostcobra:tick_plot
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_5_-1 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_-4_0 pr.value positioned -392.0 -64 -8.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
scoreboard players set #check_loaded_bool pr.value 1
execute if score #plot_player_-4_0 pr.value matches 0 if score #plot_tick_-4_0 pr.value matches 0 run scoreboard players set #check_loaded_bool pr.value 0
scoreboard players set #chunk_loaded_bool pr.value 0
execute if score #check_loaded_bool pr.value matches 1 if loaded -368 0 16 if loaded -336 0 16 if loaded -368 0 48 if loaded -336 0 48 run scoreboard players set #chunk_loaded_bool pr.value 1
execute if score #plot_player_-4_0 pr.value matches 1 if score #plot_tick_-4_0 pr.value matches 0 run forceload add -368 16
execute if score #plot_player_-4_0 pr.value matches 1 if score #plot_tick_-4_0 pr.value matches 0 run forceload add -336 16
execute if score #plot_player_-4_0 pr.value matches 1 if score #plot_tick_-4_0 pr.value matches 0 run forceload add -368 48
execute if score #plot_player_-4_0 pr.value matches 1 if score #plot_tick_-4_0 pr.value matches 0 run forceload add -336 48
execute if score #plot_player_-4_0 pr.value matches 0 if score #plot_tick_-4_0 pr.value matches 1 run forceload remove -368 16
execute if score #plot_player_-4_0 pr.value matches 0 if score #plot_tick_-4_0 pr.value matches 1 run forceload remove -336 16
execute if score #plot_player_-4_0 pr.value matches 0 if score #plot_tick_-4_0 pr.value matches 1 run forceload remove -368 48
execute if score #plot_player_-4_0 pr.value matches 0 if score #plot_tick_-4_0 pr.value matches 1 run forceload remove -336 48
execute if score #chunk_loaded_bool pr.value matches 1 unless score #plot_player_-4_0 pr.value = #plot_tick_-4_0 pr.value positioned -392.0 -64 -8.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_player_-4_0 pr.value matches 1 if score #plot_tick_-4_0 pr.value matches 0 positioned -344 0 40 run function masp005:plot_on
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_player_-4_0 pr.value matches 0 if score #plot_tick_-4_0 pr.value matches 1 positioned -344 0 40 run function masp005:plot_off
execute if score #chunk_loaded_bool pr.value matches 1 unless score #plot_player_-4_0 pr.value = #plot_tick_-4_0 pr.value run tag @e[tag=pr.target] remove pr.target
execute if score #chunk_loaded_bool pr.value matches 1 run scoreboard players operation #plot_tick_-4_0 pr.value = #plot_player_-4_0 pr.value
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_-4_0 pr.value matches 1 positioned -388.0 -64 -4.0 run scoreboard players set @a[dx=87,dy=383,dz=87,tag=!pr.spectator] pr.plot 1036
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_-4_0 pr.value matches 1 positioned -388.0 -64 -4.0 run tag @e[dx=87,dy=383,dz=87,tag=!pr.spectator] add pr.target
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_-4_0 pr.value matches 1 as @a[tag=pr.target] unless score @s pr.plot = @s pr.plot_previous at @s run function pr:player/plot/move
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_-4_0 pr.value matches 1 positioned -344 0 40 run function masp005:tick_plot
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_-4_0 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_-3_0 pr.value positioned -296.0 -64 -8.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
scoreboard players set #check_loaded_bool pr.value 1
execute if score #plot_player_-3_0 pr.value matches 0 if score #plot_tick_-3_0 pr.value matches 0 run scoreboard players set #check_loaded_bool pr.value 0
scoreboard players set #chunk_loaded_bool pr.value 0
execute if score #check_loaded_bool pr.value matches 1 if loaded -272 0 16 if loaded -240 0 16 if loaded -272 0 48 if loaded -240 0 48 run scoreboard players set #chunk_loaded_bool pr.value 1
execute if score #plot_player_-3_0 pr.value matches 1 if score #plot_tick_-3_0 pr.value matches 0 run forceload add -272 16
execute if score #plot_player_-3_0 pr.value matches 1 if score #plot_tick_-3_0 pr.value matches 0 run forceload add -240 16
execute if score #plot_player_-3_0 pr.value matches 1 if score #plot_tick_-3_0 pr.value matches 0 run forceload add -272 48
execute if score #plot_player_-3_0 pr.value matches 1 if score #plot_tick_-3_0 pr.value matches 0 run forceload add -240 48
execute if score #plot_player_-3_0 pr.value matches 0 if score #plot_tick_-3_0 pr.value matches 1 run forceload remove -272 16
execute if score #plot_player_-3_0 pr.value matches 0 if score #plot_tick_-3_0 pr.value matches 1 run forceload remove -240 16
execute if score #plot_player_-3_0 pr.value matches 0 if score #plot_tick_-3_0 pr.value matches 1 run forceload remove -272 48
execute if score #plot_player_-3_0 pr.value matches 0 if score #plot_tick_-3_0 pr.value matches 1 run forceload remove -240 48
execute if score #chunk_loaded_bool pr.value matches 1 unless score #plot_player_-3_0 pr.value = #plot_tick_-3_0 pr.value positioned -296.0 -64 -8.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_player_-3_0 pr.value matches 1 if score #plot_tick_-3_0 pr.value matches 0 positioned -248 0 40 run function anikey_plot:plot_on
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_player_-3_0 pr.value matches 0 if score #plot_tick_-3_0 pr.value matches 1 positioned -248 0 40 run function anikey_plot:plot_off
execute if score #chunk_loaded_bool pr.value matches 1 unless score #plot_player_-3_0 pr.value = #plot_tick_-3_0 pr.value run tag @e[tag=pr.target] remove pr.target
execute if score #chunk_loaded_bool pr.value matches 1 run scoreboard players operation #plot_tick_-3_0 pr.value = #plot_player_-3_0 pr.value
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_-3_0 pr.value matches 1 positioned -292.0 -64 -4.0 run scoreboard players set @a[dx=87,dy=383,dz=87,tag=!pr.spectator] pr.plot 1037
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_-3_0 pr.value matches 1 positioned -292.0 -64 -4.0 run tag @e[dx=87,dy=383,dz=87,tag=!pr.spectator] add pr.target
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_-3_0 pr.value matches 1 as @a[tag=pr.target] unless score @s pr.plot = @s pr.plot_previous at @s run function pr:player/plot/move
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_-3_0 pr.value matches 1 positioned -248 0 40 run function anikey_plot:tick_plot
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_-3_0 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_-1_0 pr.value positioned -104.0 -64 -8.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_-1_0 pr.value = #plot_tick_-1_0 pr.value positioned -104.0 -64 -8.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_-1_0 pr.value matches 1 if score #plot_tick_-1_0 pr.value matches 0 positioned -56 0 40 run function namespace:plot_on
#execute if score #plot_player_-1_0 pr.value matches 0 if score #plot_tick_-1_0 pr.value matches 1 positioned -56 0 40 run function namespace:plot_off
#execute unless score #plot_player_-1_0 pr.value = #plot_tick_-1_0 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_-1_0 pr.value = #plot_player_-1_0 pr.value
execute if score #plot_tick_-1_0 pr.value matches 1 positioned -100.0 -64 -4.0 run scoreboard players set @a[dx=87,dy=383,dz=87,tag=!pr.spectator] pr.plot 1039
#execute if score #plot_tick_-1_0 pr.value matches 1 positioned -100.0 -64 -4.0 run tag @e[dx=87,dy=383,dz=87,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_-1_0 pr.value matches 1 as @a[tag=pr.target] unless score @s pr.plot = @s pr.plot_previous at @s run function pr:player/plot/move
#execute if score #plot_tick_-1_0 pr.value matches 1 positioned -56 0 40 run function namespace:tick_plot
#execute if score #plot_tick_-1_0 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_0_0 pr.value positioned -8.0 -64 -8.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
execute unless score #plot_player_0_0 pr.value = #plot_tick_0_0 pr.value positioned -8.0 -64 -8.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
execute if score #plot_player_0_0 pr.value matches 1 if score #plot_tick_0_0 pr.value matches 0 positioned 40 0 40 run function cubed:plot_on
execute if score #plot_player_0_0 pr.value matches 0 if score #plot_tick_0_0 pr.value matches 1 positioned 40 0 40 run function cubed:plot_off
execute unless score #plot_player_0_0 pr.value = #plot_tick_0_0 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_0_0 pr.value = #plot_player_0_0 pr.value
execute if score #plot_tick_0_0 pr.value matches 1 positioned -4.0 -64 -4.0 run scoreboard players set @a[dx=87,dy=383,dz=87,tag=!pr.spectator] pr.plot 1040
execute if score #plot_tick_0_0 pr.value matches 1 positioned -4.0 -64 -4.0 run tag @e[dx=87,dy=383,dz=87,tag=!pr.spectator] add pr.target
execute if score #plot_tick_0_0 pr.value matches 1 as @a[tag=pr.target] unless score @s pr.plot = @s pr.plot_previous at @s run function pr:player/plot/move
execute if score #plot_tick_0_0 pr.value matches 1 positioned 40 0 40 run function cubed:tick_plot
execute if score #plot_tick_0_0 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_3_0 pr.value positioned 280.0 -64 -8.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_3_0 pr.value = #plot_tick_3_0 pr.value positioned 280.0 -64 -8.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_3_0 pr.value matches 1 if score #plot_tick_3_0 pr.value matches 0 positioned 328 0 40 run function namespace:plot_on
#execute if score #plot_player_3_0 pr.value matches 0 if score #plot_tick_3_0 pr.value matches 1 positioned 328 0 40 run function namespace:plot_off
#execute unless score #plot_player_3_0 pr.value = #plot_tick_3_0 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_3_0 pr.value = #plot_player_3_0 pr.value
execute if score #plot_tick_3_0 pr.value matches 1 positioned 284.0 -64 -4.0 run scoreboard players set @a[dx=87,dy=383,dz=87,tag=!pr.spectator] pr.plot 1043
#execute if score #plot_tick_3_0 pr.value matches 1 positioned 284.0 -64 -4.0 run tag @e[dx=87,dy=383,dz=87,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_3_0 pr.value matches 1 as @a[tag=pr.target] unless score @s pr.plot = @s pr.plot_previous at @s run function pr:player/plot/move
#execute if score #plot_tick_3_0 pr.value matches 1 positioned 328 0 40 run function namespace:tick_plot
#execute if score #plot_tick_3_0 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_4_0 pr.value positioned 376.0 -64 -8.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
scoreboard players set #check_loaded_bool pr.value 1
execute if score #plot_player_4_0 pr.value matches 0 if score #plot_tick_4_0 pr.value matches 0 run scoreboard players set #check_loaded_bool pr.value 0
scoreboard players set #chunk_loaded_bool pr.value 0
execute if score #check_loaded_bool pr.value matches 1 if loaded 400 0 16 if loaded 432 0 16 if loaded 400 0 48 if loaded 432 0 48 run scoreboard players set #chunk_loaded_bool pr.value 1
execute if score #plot_player_4_0 pr.value matches 1 if score #plot_tick_4_0 pr.value matches 0 run forceload add 400 16
execute if score #plot_player_4_0 pr.value matches 1 if score #plot_tick_4_0 pr.value matches 0 run forceload add 432 16
execute if score #plot_player_4_0 pr.value matches 1 if score #plot_tick_4_0 pr.value matches 0 run forceload add 400 48
execute if score #plot_player_4_0 pr.value matches 1 if score #plot_tick_4_0 pr.value matches 0 run forceload add 432 48
execute if score #plot_player_4_0 pr.value matches 0 if score #plot_tick_4_0 pr.value matches 1 run forceload remove 400 16
execute if score #plot_player_4_0 pr.value matches 0 if score #plot_tick_4_0 pr.value matches 1 run forceload remove 432 16
execute if score #plot_player_4_0 pr.value matches 0 if score #plot_tick_4_0 pr.value matches 1 run forceload remove 400 48
execute if score #plot_player_4_0 pr.value matches 0 if score #plot_tick_4_0 pr.value matches 1 run forceload remove 432 48
execute if score #chunk_loaded_bool pr.value matches 1 unless score #plot_player_4_0 pr.value = #plot_tick_4_0 pr.value positioned 376.0 -64 -8.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_player_4_0 pr.value matches 1 if score #plot_tick_4_0 pr.value matches 0 positioned 424 0 40 run function cygnus_switch_palace:plot_on
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_player_4_0 pr.value matches 0 if score #plot_tick_4_0 pr.value matches 1 positioned 424 0 40 run function cygnus_switch_palace:plot_off
execute if score #chunk_loaded_bool pr.value matches 1 unless score #plot_player_4_0 pr.value = #plot_tick_4_0 pr.value run tag @e[tag=pr.target] remove pr.target
execute if score #chunk_loaded_bool pr.value matches 1 run scoreboard players operation #plot_tick_4_0 pr.value = #plot_player_4_0 pr.value
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_4_0 pr.value matches 1 positioned 380.0 -64 -4.0 run scoreboard players set @a[dx=87,dy=383,dz=87,tag=!pr.spectator] pr.plot 1044
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_4_0 pr.value matches 1 positioned 380.0 -64 -4.0 run tag @e[dx=87,dy=383,dz=87,tag=!pr.spectator] add pr.target
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_4_0 pr.value matches 1 as @a[tag=pr.target] unless score @s pr.plot = @s pr.plot_previous at @s run function pr:player/plot/move
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_4_0 pr.value matches 1 positioned 424 0 40 run function cygnus_switch_palace:tick_plot
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_4_0 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_-5_1 pr.value positioned -488.0 -64 88.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
scoreboard players set #check_loaded_bool pr.value 1
execute if score #plot_player_-5_1 pr.value matches 0 if score #plot_tick_-5_1 pr.value matches 0 run scoreboard players set #check_loaded_bool pr.value 0
scoreboard players set #chunk_loaded_bool pr.value 0
execute if score #check_loaded_bool pr.value matches 1 if loaded -464 0 112 if loaded -432 0 112 if loaded -464 0 144 if loaded -432 0 144 run scoreboard players set #chunk_loaded_bool pr.value 1
execute if score #plot_player_-5_1 pr.value matches 1 if score #plot_tick_-5_1 pr.value matches 0 run forceload add -464 112
execute if score #plot_player_-5_1 pr.value matches 1 if score #plot_tick_-5_1 pr.value matches 0 run forceload add -432 112
execute if score #plot_player_-5_1 pr.value matches 1 if score #plot_tick_-5_1 pr.value matches 0 run forceload add -464 144
execute if score #plot_player_-5_1 pr.value matches 1 if score #plot_tick_-5_1 pr.value matches 0 run forceload add -432 144
execute if score #plot_player_-5_1 pr.value matches 0 if score #plot_tick_-5_1 pr.value matches 1 run forceload remove -464 112
execute if score #plot_player_-5_1 pr.value matches 0 if score #plot_tick_-5_1 pr.value matches 1 run forceload remove -432 112
execute if score #plot_player_-5_1 pr.value matches 0 if score #plot_tick_-5_1 pr.value matches 1 run forceload remove -464 144
execute if score #plot_player_-5_1 pr.value matches 0 if score #plot_tick_-5_1 pr.value matches 1 run forceload remove -432 144
execute if score #chunk_loaded_bool pr.value matches 1 unless score #plot_player_-5_1 pr.value = #plot_tick_-5_1 pr.value positioned -488.0 -64 88.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_player_-5_1 pr.value matches 1 if score #plot_tick_-5_1 pr.value matches 0 positioned -440 0 136 run function dtplayers:plot_on
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_player_-5_1 pr.value matches 0 if score #plot_tick_-5_1 pr.value matches 1 positioned -440 0 136 run function dtplayers:plot_off
execute if score #chunk_loaded_bool pr.value matches 1 unless score #plot_player_-5_1 pr.value = #plot_tick_-5_1 pr.value run tag @e[tag=pr.target] remove pr.target
execute if score #chunk_loaded_bool pr.value matches 1 run scoreboard players operation #plot_tick_-5_1 pr.value = #plot_player_-5_1 pr.value
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_-5_1 pr.value matches 1 positioned -484.0 -64 92.0 run scoreboard players set @a[dx=87,dy=383,dz=87,tag=!pr.spectator] pr.plot 1099
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_-5_1 pr.value matches 1 positioned -484.0 -64 92.0 run tag @e[dx=87,dy=383,dz=87,tag=!pr.spectator] add pr.target
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_-5_1 pr.value matches 1 as @a[tag=pr.target] unless score @s pr.plot = @s pr.plot_previous at @s run function pr:player/plot/move
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_-5_1 pr.value matches 1 positioned -440 0 136 run function dtplayers:tick_plot
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_-5_1 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_-4_1 pr.value positioned -392.0 -64 88.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_-4_1 pr.value = #plot_tick_-4_1 pr.value positioned -392.0 -64 88.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_-4_1 pr.value matches 1 if score #plot_tick_-4_1 pr.value matches 0 positioned -344 0 136 run function namespace:plot_on
#execute if score #plot_player_-4_1 pr.value matches 0 if score #plot_tick_-4_1 pr.value matches 1 positioned -344 0 136 run function namespace:plot_off
#execute unless score #plot_player_-4_1 pr.value = #plot_tick_-4_1 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_-4_1 pr.value = #plot_player_-4_1 pr.value
execute if score #plot_tick_-4_1 pr.value matches 1 positioned -388.0 -64 92.0 run scoreboard players set @a[dx=87,dy=383,dz=87,tag=!pr.spectator] pr.plot 1100
#execute if score #plot_tick_-4_1 pr.value matches 1 positioned -388.0 -64 92.0 run tag @e[dx=87,dy=383,dz=87,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_-4_1 pr.value matches 1 as @a[tag=pr.target] unless score @s pr.plot = @s pr.plot_previous at @s run function pr:player/plot/move
#execute if score #plot_tick_-4_1 pr.value matches 1 positioned -344 0 136 run function namespace:tick_plot
#execute if score #plot_tick_-4_1 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_-3_1 pr.value positioned -296.0 -64 88.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
scoreboard players set #check_loaded_bool pr.value 1
execute if score #plot_player_-3_1 pr.value matches 0 if score #plot_tick_-3_1 pr.value matches 0 run scoreboard players set #check_loaded_bool pr.value 0
scoreboard players set #chunk_loaded_bool pr.value 0
execute if score #check_loaded_bool pr.value matches 1 if loaded -272 0 112 if loaded -240 0 112 if loaded -272 0 144 if loaded -240 0 144 run scoreboard players set #chunk_loaded_bool pr.value 1
execute if score #plot_player_-3_1 pr.value matches 1 if score #plot_tick_-3_1 pr.value matches 0 run forceload add -272 112
execute if score #plot_player_-3_1 pr.value matches 1 if score #plot_tick_-3_1 pr.value matches 0 run forceload add -240 112
execute if score #plot_player_-3_1 pr.value matches 1 if score #plot_tick_-3_1 pr.value matches 0 run forceload add -272 144
execute if score #plot_player_-3_1 pr.value matches 1 if score #plot_tick_-3_1 pr.value matches 0 run forceload add -240 144
execute if score #plot_player_-3_1 pr.value matches 0 if score #plot_tick_-3_1 pr.value matches 1 run forceload remove -272 112
execute if score #plot_player_-3_1 pr.value matches 0 if score #plot_tick_-3_1 pr.value matches 1 run forceload remove -240 112
execute if score #plot_player_-3_1 pr.value matches 0 if score #plot_tick_-3_1 pr.value matches 1 run forceload remove -272 144
execute if score #plot_player_-3_1 pr.value matches 0 if score #plot_tick_-3_1 pr.value matches 1 run forceload remove -240 144
execute if score #chunk_loaded_bool pr.value matches 1 unless score #plot_player_-3_1 pr.value = #plot_tick_-3_1 pr.value positioned -296.0 -64 88.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_player_-3_1 pr.value matches 1 if score #plot_tick_-3_1 pr.value matches 0 positioned -248 0 136 run function aljaz:plot_on
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_player_-3_1 pr.value matches 0 if score #plot_tick_-3_1 pr.value matches 1 positioned -248 0 136 run function aljaz:plot_off
execute if score #chunk_loaded_bool pr.value matches 1 unless score #plot_player_-3_1 pr.value = #plot_tick_-3_1 pr.value run tag @e[tag=pr.target] remove pr.target
execute if score #chunk_loaded_bool pr.value matches 1 run scoreboard players operation #plot_tick_-3_1 pr.value = #plot_player_-3_1 pr.value
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_-3_1 pr.value matches 1 positioned -292.0 -64 92.0 run scoreboard players set @a[dx=87,dy=383,dz=87,tag=!pr.spectator] pr.plot 1101
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_-3_1 pr.value matches 1 positioned -292.0 -64 92.0 run tag @e[dx=87,dy=383,dz=87,tag=!pr.spectator] add pr.target
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_-3_1 pr.value matches 1 as @a[tag=pr.target] unless score @s pr.plot = @s pr.plot_previous at @s run function pr:player/plot/move
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_-3_1 pr.value matches 1 positioned -248 0 136 run function aljaz:tick_plot
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_-3_1 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_-2_1 pr.value positioned -200.0 -64 88.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
execute unless score #plot_player_-2_1 pr.value = #plot_tick_-2_1 pr.value positioned -200.0 -64 88.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
execute if score #plot_player_-2_1 pr.value matches 1 if score #plot_tick_-2_1 pr.value matches 0 positioned -152 0 136 run function theswagunicorn3:plot_on
execute if score #plot_player_-2_1 pr.value matches 0 if score #plot_tick_-2_1 pr.value matches 1 positioned -152 0 136 run function theswagunicorn3:plot_off
execute unless score #plot_player_-2_1 pr.value = #plot_tick_-2_1 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_-2_1 pr.value = #plot_player_-2_1 pr.value
execute if score #plot_tick_-2_1 pr.value matches 1 positioned -196.0 -64 92.0 run scoreboard players set @a[dx=87,dy=383,dz=87,tag=!pr.spectator] pr.plot 1102
execute if score #plot_tick_-2_1 pr.value matches 1 positioned -196.0 -64 92.0 run tag @e[dx=87,dy=383,dz=87,tag=!pr.spectator] add pr.target
execute if score #plot_tick_-2_1 pr.value matches 1 as @a[tag=pr.target] unless score @s pr.plot = @s pr.plot_previous at @s run function pr:player/plot/move
execute if score #plot_tick_-2_1 pr.value matches 1 positioned -152 0 136 run function theswagunicorn3:tick_plot
execute if score #plot_tick_-2_1 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_-1_1 pr.value positioned -104.0 -64 88.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
execute unless score #plot_player_-1_1 pr.value = #plot_tick_-1_1 pr.value positioned -104.0 -64 88.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
execute if score #plot_player_-1_1 pr.value matches 1 if score #plot_tick_-1_1 pr.value matches 0 positioned -56 0 136 run function pytich_dropper:plot_on
execute if score #plot_player_-1_1 pr.value matches 0 if score #plot_tick_-1_1 pr.value matches 1 positioned -56 0 136 run function pytich_dropper:plot_off
execute unless score #plot_player_-1_1 pr.value = #plot_tick_-1_1 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_-1_1 pr.value = #plot_player_-1_1 pr.value
execute if score #plot_tick_-1_1 pr.value matches 1 positioned -100.0 -64 92.0 run scoreboard players set @a[dx=87,dy=383,dz=87,tag=!pr.spectator] pr.plot 1103
execute if score #plot_tick_-1_1 pr.value matches 1 positioned -100.0 -64 92.0 run tag @e[dx=87,dy=383,dz=87,tag=!pr.spectator] add pr.target
execute if score #plot_tick_-1_1 pr.value matches 1 as @a[tag=pr.target] unless score @s pr.plot = @s pr.plot_previous at @s run function pr:player/plot/move
execute if score #plot_tick_-1_1 pr.value matches 1 positioned -56 0 136 run function pytich_dropper:tick_plot
execute if score #plot_tick_-1_1 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_0_1 pr.value positioned -8.0 -64 88.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_0_1 pr.value = #plot_tick_0_1 pr.value positioned -8.0 -64 88.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_0_1 pr.value matches 1 if score #plot_tick_0_1 pr.value matches 0 positioned 40 0 136 run function namespace:plot_on
#execute if score #plot_player_0_1 pr.value matches 0 if score #plot_tick_0_1 pr.value matches 1 positioned 40 0 136 run function namespace:plot_off
#execute unless score #plot_player_0_1 pr.value = #plot_tick_0_1 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_0_1 pr.value = #plot_player_0_1 pr.value
execute if score #plot_tick_0_1 pr.value matches 1 positioned -4.0 -64 92.0 run scoreboard players set @a[dx=87,dy=383,dz=87,tag=!pr.spectator] pr.plot 1104
#execute if score #plot_tick_0_1 pr.value matches 1 positioned -4.0 -64 92.0 run tag @e[dx=87,dy=383,dz=87,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_0_1 pr.value matches 1 as @a[tag=pr.target] unless score @s pr.plot = @s pr.plot_previous at @s run function pr:player/plot/move
#execute if score #plot_tick_0_1 pr.value matches 1 positioned 40 0 136 run function namespace:tick_plot
#execute if score #plot_tick_0_1 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_1_1 pr.value positioned 88.0 -64 88.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
execute unless score #plot_player_1_1 pr.value = #plot_tick_1_1 pr.value positioned 88.0 -64 88.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
execute if score #plot_player_1_1 pr.value matches 1 if score #plot_tick_1_1 pr.value matches 0 positioned 136 0 136 run function risely:plot_on
execute if score #plot_player_1_1 pr.value matches 0 if score #plot_tick_1_1 pr.value matches 1 positioned 136 0 136 run function risely:plot_off
execute unless score #plot_player_1_1 pr.value = #plot_tick_1_1 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_1_1 pr.value = #plot_player_1_1 pr.value
execute if score #plot_tick_1_1 pr.value matches 1 positioned 92.0 -64 92.0 run scoreboard players set @a[dx=87,dy=383,dz=87,tag=!pr.spectator] pr.plot 1105
execute if score #plot_tick_1_1 pr.value matches 1 positioned 92.0 -64 92.0 run tag @e[dx=87,dy=383,dz=87,tag=!pr.spectator] add pr.target
execute if score #plot_tick_1_1 pr.value matches 1 as @a[tag=pr.target] unless score @s pr.plot = @s pr.plot_previous at @s run function pr:player/plot/move
execute if score #plot_tick_1_1 pr.value matches 1 positioned 136 0 136 run function risely:tick_plot
execute if score #plot_tick_1_1 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_2_1 pr.value positioned 184.0 -64 88.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
scoreboard players set #check_loaded_bool pr.value 1
execute if score #plot_player_2_1 pr.value matches 0 if score #plot_tick_2_1 pr.value matches 0 run scoreboard players set #check_loaded_bool pr.value 0
scoreboard players set #chunk_loaded_bool pr.value 0
execute if score #check_loaded_bool pr.value matches 1 if loaded 208 0 112 if loaded 240 0 112 if loaded 208 0 144 if loaded 240 0 144 run scoreboard players set #chunk_loaded_bool pr.value 1
execute if score #plot_player_2_1 pr.value matches 1 if score #plot_tick_2_1 pr.value matches 0 run forceload add 208 112
execute if score #plot_player_2_1 pr.value matches 1 if score #plot_tick_2_1 pr.value matches 0 run forceload add 240 112
execute if score #plot_player_2_1 pr.value matches 1 if score #plot_tick_2_1 pr.value matches 0 run forceload add 208 144
execute if score #plot_player_2_1 pr.value matches 1 if score #plot_tick_2_1 pr.value matches 0 run forceload add 240 144
execute if score #plot_player_2_1 pr.value matches 0 if score #plot_tick_2_1 pr.value matches 1 run forceload remove 208 112
execute if score #plot_player_2_1 pr.value matches 0 if score #plot_tick_2_1 pr.value matches 1 run forceload remove 240 112
execute if score #plot_player_2_1 pr.value matches 0 if score #plot_tick_2_1 pr.value matches 1 run forceload remove 208 144
execute if score #plot_player_2_1 pr.value matches 0 if score #plot_tick_2_1 pr.value matches 1 run forceload remove 240 144
execute if score #chunk_loaded_bool pr.value matches 1 unless score #plot_player_2_1 pr.value = #plot_tick_2_1 pr.value positioned 184.0 -64 88.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_player_2_1 pr.value matches 1 if score #plot_tick_2_1 pr.value matches 0 positioned 232 0 136 run function subchronos:plot_on
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_player_2_1 pr.value matches 0 if score #plot_tick_2_1 pr.value matches 1 positioned 232 0 136 run function subchronos:plot_off
execute if score #chunk_loaded_bool pr.value matches 1 unless score #plot_player_2_1 pr.value = #plot_tick_2_1 pr.value run tag @e[tag=pr.target] remove pr.target
execute if score #chunk_loaded_bool pr.value matches 1 run scoreboard players operation #plot_tick_2_1 pr.value = #plot_player_2_1 pr.value
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_2_1 pr.value matches 1 positioned 188.0 -64 92.0 run scoreboard players set @a[dx=87,dy=383,dz=87,tag=!pr.spectator] pr.plot 1106
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_2_1 pr.value matches 1 positioned 188.0 -64 92.0 run tag @e[dx=87,dy=383,dz=87,tag=!pr.spectator] add pr.target
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_2_1 pr.value matches 1 as @a[tag=pr.target] unless score @s pr.plot = @s pr.plot_previous at @s run function pr:player/plot/move
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_2_1 pr.value matches 1 positioned 232 0 136 run function subchronos:tick_plot
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_2_1 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_3_1 pr.value positioned 280.0 -64 88.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
execute unless score #plot_player_3_1 pr.value = #plot_tick_3_1 pr.value positioned 280.0 -64 88.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
execute if score #plot_player_3_1 pr.value matches 1 if score #plot_tick_3_1 pr.value matches 0 positioned 328 0 136 run function blackcb:plot_on
execute if score #plot_player_3_1 pr.value matches 0 if score #plot_tick_3_1 pr.value matches 1 positioned 328 0 136 run function blackcb:plot_off
execute unless score #plot_player_3_1 pr.value = #plot_tick_3_1 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_3_1 pr.value = #plot_player_3_1 pr.value
execute if score #plot_tick_3_1 pr.value matches 1 positioned 284.0 -64 92.0 run scoreboard players set @a[dx=87,dy=383,dz=87,tag=!pr.spectator] pr.plot 1107
execute if score #plot_tick_3_1 pr.value matches 1 positioned 284.0 -64 92.0 run tag @e[dx=87,dy=383,dz=87,tag=!pr.spectator] add pr.target
execute if score #plot_tick_3_1 pr.value matches 1 as @a[tag=pr.target] unless score @s pr.plot = @s pr.plot_previous at @s run function pr:player/plot/move
execute if score #plot_tick_3_1 pr.value matches 1 positioned 328 0 136 run function blackcb:tick_plot
execute if score #plot_tick_3_1 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_4_1 pr.value positioned 376.0 -64 88.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_4_1 pr.value = #plot_tick_4_1 pr.value positioned 376.0 -64 88.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_4_1 pr.value matches 1 if score #plot_tick_4_1 pr.value matches 0 positioned 424 0 136 run function namespace:plot_on
#execute if score #plot_player_4_1 pr.value matches 0 if score #plot_tick_4_1 pr.value matches 1 positioned 424 0 136 run function namespace:plot_off
#execute unless score #plot_player_4_1 pr.value = #plot_tick_4_1 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_4_1 pr.value = #plot_player_4_1 pr.value
execute if score #plot_tick_4_1 pr.value matches 1 positioned 380.0 -64 92.0 run scoreboard players set @a[dx=87,dy=383,dz=87,tag=!pr.spectator] pr.plot 1108
#execute if score #plot_tick_4_1 pr.value matches 1 positioned 380.0 -64 92.0 run tag @e[dx=87,dy=383,dz=87,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_4_1 pr.value matches 1 as @a[tag=pr.target] unless score @s pr.plot = @s pr.plot_previous at @s run function pr:player/plot/move
#execute if score #plot_tick_4_1 pr.value matches 1 positioned 424 0 136 run function namespace:tick_plot
#execute if score #plot_tick_4_1 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_5_1 pr.value positioned 472.0 -64 88.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
scoreboard players set #check_loaded_bool pr.value 1
execute if score #plot_player_5_1 pr.value matches 0 if score #plot_tick_5_1 pr.value matches 0 run scoreboard players set #check_loaded_bool pr.value 0
scoreboard players set #chunk_loaded_bool pr.value 0
execute if score #check_loaded_bool pr.value matches 1 if loaded 496 0 112 if loaded 528 0 112 if loaded 496 0 144 if loaded 528 0 144 run scoreboard players set #chunk_loaded_bool pr.value 1
execute if score #plot_player_5_1 pr.value matches 1 if score #plot_tick_5_1 pr.value matches 0 run forceload add 496 112
execute if score #plot_player_5_1 pr.value matches 1 if score #plot_tick_5_1 pr.value matches 0 run forceload add 528 112
execute if score #plot_player_5_1 pr.value matches 1 if score #plot_tick_5_1 pr.value matches 0 run forceload add 496 144
execute if score #plot_player_5_1 pr.value matches 1 if score #plot_tick_5_1 pr.value matches 0 run forceload add 528 144
execute if score #plot_player_5_1 pr.value matches 0 if score #plot_tick_5_1 pr.value matches 1 run forceload remove 496 112
execute if score #plot_player_5_1 pr.value matches 0 if score #plot_tick_5_1 pr.value matches 1 run forceload remove 528 112
execute if score #plot_player_5_1 pr.value matches 0 if score #plot_tick_5_1 pr.value matches 1 run forceload remove 496 144
execute if score #plot_player_5_1 pr.value matches 0 if score #plot_tick_5_1 pr.value matches 1 run forceload remove 528 144
execute if score #chunk_loaded_bool pr.value matches 1 unless score #plot_player_5_1 pr.value = #plot_tick_5_1 pr.value positioned 472.0 -64 88.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_player_5_1 pr.value matches 1 if score #plot_tick_5_1 pr.value matches 0 positioned 520 0 136 run function marcostrk-icy-boat-parkour:plot_on
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_player_5_1 pr.value matches 0 if score #plot_tick_5_1 pr.value matches 1 positioned 520 0 136 run function marcostrk-icy-boat-parkour:plot_off
execute if score #chunk_loaded_bool pr.value matches 1 unless score #plot_player_5_1 pr.value = #plot_tick_5_1 pr.value run tag @e[tag=pr.target] remove pr.target
execute if score #chunk_loaded_bool pr.value matches 1 run scoreboard players operation #plot_tick_5_1 pr.value = #plot_player_5_1 pr.value
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_5_1 pr.value matches 1 positioned 476.0 -64 92.0 run scoreboard players set @a[dx=87,dy=383,dz=87,tag=!pr.spectator] pr.plot 1109
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_5_1 pr.value matches 1 positioned 476.0 -64 92.0 run tag @e[dx=87,dy=383,dz=87,tag=!pr.spectator] add pr.target
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_5_1 pr.value matches 1 as @a[tag=pr.target] unless score @s pr.plot = @s pr.plot_previous at @s run function pr:player/plot/move
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_5_1 pr.value matches 1 positioned 520 0 136 run function marcostrk-icy-boat-parkour:tick_plot
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_5_1 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_-6_2 pr.value positioned -584.0 -64 184.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
scoreboard players set #check_loaded_bool pr.value 1
execute if score #plot_player_-6_2 pr.value matches 0 if score #plot_tick_-6_2 pr.value matches 0 run scoreboard players set #check_loaded_bool pr.value 0
scoreboard players set #chunk_loaded_bool pr.value 0
execute if score #check_loaded_bool pr.value matches 1 if loaded -560 0 208 if loaded -528 0 208 if loaded -560 0 240 if loaded -528 0 240 run scoreboard players set #chunk_loaded_bool pr.value 1
execute if score #plot_player_-6_2 pr.value matches 1 if score #plot_tick_-6_2 pr.value matches 0 run forceload add -560 208
execute if score #plot_player_-6_2 pr.value matches 1 if score #plot_tick_-6_2 pr.value matches 0 run forceload add -528 208
execute if score #plot_player_-6_2 pr.value matches 1 if score #plot_tick_-6_2 pr.value matches 0 run forceload add -560 240
execute if score #plot_player_-6_2 pr.value matches 1 if score #plot_tick_-6_2 pr.value matches 0 run forceload add -528 240
execute if score #plot_player_-6_2 pr.value matches 0 if score #plot_tick_-6_2 pr.value matches 1 run forceload remove -560 208
execute if score #plot_player_-6_2 pr.value matches 0 if score #plot_tick_-6_2 pr.value matches 1 run forceload remove -528 208
execute if score #plot_player_-6_2 pr.value matches 0 if score #plot_tick_-6_2 pr.value matches 1 run forceload remove -560 240
execute if score #plot_player_-6_2 pr.value matches 0 if score #plot_tick_-6_2 pr.value matches 1 run forceload remove -528 240
execute if score #chunk_loaded_bool pr.value matches 1 unless score #plot_player_-6_2 pr.value = #plot_tick_-6_2 pr.value positioned -584.0 -64 184.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_player_-6_2 pr.value matches 1 if score #plot_tick_-6_2 pr.value matches 0 positioned -536 0 232 run function corruptide_city:plot_on
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_player_-6_2 pr.value matches 0 if score #plot_tick_-6_2 pr.value matches 1 positioned -536 0 232 run function corruptide_city:plot_off
execute if score #chunk_loaded_bool pr.value matches 1 unless score #plot_player_-6_2 pr.value = #plot_tick_-6_2 pr.value run tag @e[tag=pr.target] remove pr.target
execute if score #chunk_loaded_bool pr.value matches 1 run scoreboard players operation #plot_tick_-6_2 pr.value = #plot_player_-6_2 pr.value
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_-6_2 pr.value matches 1 positioned -580.0 -64 188.0 run scoreboard players set @a[dx=87,dy=383,dz=87,tag=!pr.spectator] pr.plot 1162
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_-6_2 pr.value matches 1 positioned -580.0 -64 188.0 run tag @e[dx=87,dy=383,dz=87,tag=!pr.spectator] add pr.target
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_-6_2 pr.value matches 1 as @a[tag=pr.target] unless score @s pr.plot = @s pr.plot_previous at @s run function pr:player/plot/move
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_-6_2 pr.value matches 1 positioned -536 0 232 run function corruptide_city:tick_plot
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_-6_2 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_-5_2 pr.value positioned -488.0 -64 184.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_-5_2 pr.value = #plot_tick_-5_2 pr.value positioned -488.0 -64 184.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_-5_2 pr.value matches 1 if score #plot_tick_-5_2 pr.value matches 0 positioned -440 0 232 run function namespace:plot_on
#execute if score #plot_player_-5_2 pr.value matches 0 if score #plot_tick_-5_2 pr.value matches 1 positioned -440 0 232 run function namespace:plot_off
#execute unless score #plot_player_-5_2 pr.value = #plot_tick_-5_2 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_-5_2 pr.value = #plot_player_-5_2 pr.value
execute if score #plot_tick_-5_2 pr.value matches 1 positioned -484.0 -64 188.0 run scoreboard players set @a[dx=87,dy=383,dz=87,tag=!pr.spectator] pr.plot 1163
#execute if score #plot_tick_-5_2 pr.value matches 1 positioned -484.0 -64 188.0 run tag @e[dx=87,dy=383,dz=87,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_-5_2 pr.value matches 1 as @a[tag=pr.target] unless score @s pr.plot = @s pr.plot_previous at @s run function pr:player/plot/move
#execute if score #plot_tick_-5_2 pr.value matches 1 positioned -440 0 232 run function namespace:tick_plot
#execute if score #plot_tick_-5_2 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_-4_2 pr.value positioned -392.0 -64 184.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
execute unless score #plot_player_-4_2 pr.value = #plot_tick_-4_2 pr.value positioned -392.0 -64 184.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
execute if score #plot_player_-4_2 pr.value matches 1 if score #plot_tick_-4_2 pr.value matches 0 positioned -344 0 232 run function flying_dragon:plot_on
execute if score #plot_player_-4_2 pr.value matches 0 if score #plot_tick_-4_2 pr.value matches 1 positioned -344 0 232 run function flying_dragon:plot_off
execute unless score #plot_player_-4_2 pr.value = #plot_tick_-4_2 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_-4_2 pr.value = #plot_player_-4_2 pr.value
execute if score #plot_tick_-4_2 pr.value matches 1 positioned -388.0 -64 188.0 run scoreboard players set @a[dx=87,dy=383,dz=87,tag=!pr.spectator] pr.plot 1164
execute if score #plot_tick_-4_2 pr.value matches 1 positioned -388.0 -64 188.0 run tag @e[dx=87,dy=383,dz=87,tag=!pr.spectator] add pr.target
execute if score #plot_tick_-4_2 pr.value matches 1 as @a[tag=pr.target] unless score @s pr.plot = @s pr.plot_previous at @s run function pr:player/plot/move
execute if score #plot_tick_-4_2 pr.value matches 1 positioned -344 0 232 run function flying_dragon:tick_plot
execute if score #plot_tick_-4_2 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_-3_2 pr.value positioned -296.0 -64 184.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
execute unless score #plot_player_-3_2 pr.value = #plot_tick_-3_2 pr.value positioned -296.0 -64 184.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
execute if score #plot_player_-3_2 pr.value matches 1 if score #plot_tick_-3_2 pr.value matches 0 positioned -248 0 232 run function boss586:plot_on
execute if score #plot_player_-3_2 pr.value matches 0 if score #plot_tick_-3_2 pr.value matches 1 positioned -248 0 232 run function boss586:plot_off
execute unless score #plot_player_-3_2 pr.value = #plot_tick_-3_2 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_-3_2 pr.value = #plot_player_-3_2 pr.value
execute if score #plot_tick_-3_2 pr.value matches 1 positioned -292.0 -64 188.0 run scoreboard players set @a[dx=87,dy=383,dz=87,tag=!pr.spectator] pr.plot 1165
execute if score #plot_tick_-3_2 pr.value matches 1 positioned -292.0 -64 188.0 run tag @e[dx=87,dy=383,dz=87,tag=!pr.spectator] add pr.target
execute if score #plot_tick_-3_2 pr.value matches 1 as @a[tag=pr.target] unless score @s pr.plot = @s pr.plot_previous at @s run function pr:player/plot/move
execute if score #plot_tick_-3_2 pr.value matches 1 positioned -248 0 232 run function boss586:tick_plot
execute if score #plot_tick_-3_2 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_-1_2 pr.value positioned -104.0 -64 184.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
scoreboard players set #check_loaded_bool pr.value 1
execute if score #plot_player_-1_2 pr.value matches 0 if score #plot_tick_-1_2 pr.value matches 0 run scoreboard players set #check_loaded_bool pr.value 0
scoreboard players set #chunk_loaded_bool pr.value 0
execute if score #check_loaded_bool pr.value matches 1 if loaded -80 0 208 if loaded -48 0 208 if loaded -80 0 240 if loaded -48 0 240 run scoreboard players set #chunk_loaded_bool pr.value 1
execute if score #plot_player_-1_2 pr.value matches 1 if score #plot_tick_-1_2 pr.value matches 0 run forceload add -80 208
execute if score #plot_player_-1_2 pr.value matches 1 if score #plot_tick_-1_2 pr.value matches 0 run forceload add -48 208
execute if score #plot_player_-1_2 pr.value matches 1 if score #plot_tick_-1_2 pr.value matches 0 run forceload add -80 240
execute if score #plot_player_-1_2 pr.value matches 1 if score #plot_tick_-1_2 pr.value matches 0 run forceload add -48 240
execute if score #plot_player_-1_2 pr.value matches 0 if score #plot_tick_-1_2 pr.value matches 1 run forceload remove -80 208
execute if score #plot_player_-1_2 pr.value matches 0 if score #plot_tick_-1_2 pr.value matches 1 run forceload remove -48 208
execute if score #plot_player_-1_2 pr.value matches 0 if score #plot_tick_-1_2 pr.value matches 1 run forceload remove -80 240
execute if score #plot_player_-1_2 pr.value matches 0 if score #plot_tick_-1_2 pr.value matches 1 run forceload remove -48 240
execute if score #chunk_loaded_bool pr.value matches 1 unless score #plot_player_-1_2 pr.value = #plot_tick_-1_2 pr.value positioned -104.0 -64 184.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_player_-1_2 pr.value matches 1 if score #plot_tick_-1_2 pr.value matches 0 positioned -56 0 232 run function applecake:plot_on
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_player_-1_2 pr.value matches 0 if score #plot_tick_-1_2 pr.value matches 1 positioned -56 0 232 run function applecake:plot_off
execute if score #chunk_loaded_bool pr.value matches 1 unless score #plot_player_-1_2 pr.value = #plot_tick_-1_2 pr.value run tag @e[tag=pr.target] remove pr.target
execute if score #chunk_loaded_bool pr.value matches 1 run scoreboard players operation #plot_tick_-1_2 pr.value = #plot_player_-1_2 pr.value
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_-1_2 pr.value matches 1 positioned -100.0 -64 188.0 run scoreboard players set @a[dx=87,dy=383,dz=87,tag=!pr.spectator] pr.plot 1167
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_-1_2 pr.value matches 1 positioned -100.0 -64 188.0 run tag @e[dx=87,dy=383,dz=87,tag=!pr.spectator] add pr.target
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_-1_2 pr.value matches 1 as @a[tag=pr.target] unless score @s pr.plot = @s pr.plot_previous at @s run function pr:player/plot/move
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_-1_2 pr.value matches 1 positioned -56 0 232 run function applecake:tick_plot
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_-1_2 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_1_2 pr.value positioned 88.0 -64 184.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
execute unless score #plot_player_1_2 pr.value = #plot_tick_1_2 pr.value positioned 88.0 -64 184.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
execute if score #plot_player_1_2 pr.value matches 1 if score #plot_tick_1_2 pr.value matches 0 positioned 136 0 232 run function minerman:plot_on
execute if score #plot_player_1_2 pr.value matches 0 if score #plot_tick_1_2 pr.value matches 1 positioned 136 0 232 run function minerman:plot_off
execute unless score #plot_player_1_2 pr.value = #plot_tick_1_2 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_1_2 pr.value = #plot_player_1_2 pr.value
execute if score #plot_tick_1_2 pr.value matches 1 positioned 92.0 -64 188.0 run scoreboard players set @a[dx=87,dy=383,dz=87,tag=!pr.spectator] pr.plot 1169
execute if score #plot_tick_1_2 pr.value matches 1 positioned 92.0 -64 188.0 run tag @e[dx=87,dy=383,dz=87,tag=!pr.spectator] add pr.target
execute if score #plot_tick_1_2 pr.value matches 1 as @a[tag=pr.target] unless score @s pr.plot = @s pr.plot_previous at @s run function pr:player/plot/move
execute if score #plot_tick_1_2 pr.value matches 1 positioned 136 0 232 run function minerman:tick_plot
execute if score #plot_tick_1_2 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_3_2 pr.value positioned 280.0 -64 184.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
scoreboard players set #check_loaded_bool pr.value 1
execute if score #plot_player_3_2 pr.value matches 0 if score #plot_tick_3_2 pr.value matches 0 run scoreboard players set #check_loaded_bool pr.value 0
scoreboard players set #chunk_loaded_bool pr.value 0
execute if score #check_loaded_bool pr.value matches 1 if loaded 304 0 208 if loaded 336 0 208 if loaded 304 0 240 if loaded 336 0 240 run scoreboard players set #chunk_loaded_bool pr.value 1
execute if score #plot_player_3_2 pr.value matches 1 if score #plot_tick_3_2 pr.value matches 0 run forceload add 304 208
execute if score #plot_player_3_2 pr.value matches 1 if score #plot_tick_3_2 pr.value matches 0 run forceload add 336 208
execute if score #plot_player_3_2 pr.value matches 1 if score #plot_tick_3_2 pr.value matches 0 run forceload add 304 240
execute if score #plot_player_3_2 pr.value matches 1 if score #plot_tick_3_2 pr.value matches 0 run forceload add 336 240
execute if score #plot_player_3_2 pr.value matches 0 if score #plot_tick_3_2 pr.value matches 1 run forceload remove 304 208
execute if score #plot_player_3_2 pr.value matches 0 if score #plot_tick_3_2 pr.value matches 1 run forceload remove 336 208
execute if score #plot_player_3_2 pr.value matches 0 if score #plot_tick_3_2 pr.value matches 1 run forceload remove 304 240
execute if score #plot_player_3_2 pr.value matches 0 if score #plot_tick_3_2 pr.value matches 1 run forceload remove 336 240
execute if score #chunk_loaded_bool pr.value matches 1 unless score #plot_player_3_2 pr.value = #plot_tick_3_2 pr.value positioned 280.0 -64 184.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_player_3_2 pr.value matches 1 if score #plot_tick_3_2 pr.value matches 0 positioned 328 0 232 run function im1294:plot_on
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_player_3_2 pr.value matches 0 if score #plot_tick_3_2 pr.value matches 1 positioned 328 0 232 run function im1294:plot_off
execute if score #chunk_loaded_bool pr.value matches 1 unless score #plot_player_3_2 pr.value = #plot_tick_3_2 pr.value run tag @e[tag=pr.target] remove pr.target
execute if score #chunk_loaded_bool pr.value matches 1 run scoreboard players operation #plot_tick_3_2 pr.value = #plot_player_3_2 pr.value
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_3_2 pr.value matches 1 positioned 284.0 -64 188.0 run scoreboard players set @a[dx=87,dy=383,dz=87,tag=!pr.spectator] pr.plot 1171
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_3_2 pr.value matches 1 positioned 284.0 -64 188.0 run tag @e[dx=87,dy=383,dz=87,tag=!pr.spectator] add pr.target
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_3_2 pr.value matches 1 as @a[tag=pr.target] unless score @s pr.plot = @s pr.plot_previous at @s run function pr:player/plot/move
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_3_2 pr.value matches 1 positioned 328 0 232 run function im1294:tick_plot
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_3_2 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_4_2 pr.value positioned 376.0 -64 184.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_4_2 pr.value = #plot_tick_4_2 pr.value positioned 376.0 -64 184.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_4_2 pr.value matches 1 if score #plot_tick_4_2 pr.value matches 0 positioned 424 0 232 run function namespace:plot_on
#execute if score #plot_player_4_2 pr.value matches 0 if score #plot_tick_4_2 pr.value matches 1 positioned 424 0 232 run function namespace:plot_off
#execute unless score #plot_player_4_2 pr.value = #plot_tick_4_2 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_4_2 pr.value = #plot_player_4_2 pr.value
execute if score #plot_tick_4_2 pr.value matches 1 positioned 380.0 -64 188.0 run scoreboard players set @a[dx=87,dy=383,dz=87,tag=!pr.spectator] pr.plot 1172
#execute if score #plot_tick_4_2 pr.value matches 1 positioned 380.0 -64 188.0 run tag @e[dx=87,dy=383,dz=87,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_4_2 pr.value matches 1 as @a[tag=pr.target] unless score @s pr.plot = @s pr.plot_previous at @s run function pr:player/plot/move
#execute if score #plot_tick_4_2 pr.value matches 1 positioned 424 0 232 run function namespace:tick_plot
#execute if score #plot_tick_4_2 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_5_2 pr.value positioned 472.0 -64 184.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_5_2 pr.value = #plot_tick_5_2 pr.value positioned 472.0 -64 184.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_5_2 pr.value matches 1 if score #plot_tick_5_2 pr.value matches 0 positioned 520 0 232 run function namespace:plot_on
#execute if score #plot_player_5_2 pr.value matches 0 if score #plot_tick_5_2 pr.value matches 1 positioned 520 0 232 run function namespace:plot_off
#execute unless score #plot_player_5_2 pr.value = #plot_tick_5_2 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_5_2 pr.value = #plot_player_5_2 pr.value
execute if score #plot_tick_5_2 pr.value matches 1 positioned 476.0 -64 188.0 run scoreboard players set @a[dx=87,dy=383,dz=87,tag=!pr.spectator] pr.plot 1173
#execute if score #plot_tick_5_2 pr.value matches 1 positioned 476.0 -64 188.0 run tag @e[dx=87,dy=383,dz=87,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_5_2 pr.value matches 1 as @a[tag=pr.target] unless score @s pr.plot = @s pr.plot_previous at @s run function pr:player/plot/move
#execute if score #plot_tick_5_2 pr.value matches 1 positioned 520 0 232 run function namespace:tick_plot
#execute if score #plot_tick_5_2 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_6_2 pr.value positioned 568.0 -64 184.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
scoreboard players set #check_loaded_bool pr.value 1
execute if score #plot_player_6_2 pr.value matches 0 if score #plot_tick_6_2 pr.value matches 0 run scoreboard players set #check_loaded_bool pr.value 0
scoreboard players set #chunk_loaded_bool pr.value 0
execute if score #check_loaded_bool pr.value matches 1 if loaded 592 0 208 if loaded 624 0 208 if loaded 592 0 240 if loaded 624 0 240 run scoreboard players set #chunk_loaded_bool pr.value 1
execute if score #plot_player_6_2 pr.value matches 1 if score #plot_tick_6_2 pr.value matches 0 run forceload add 592 208
execute if score #plot_player_6_2 pr.value matches 1 if score #plot_tick_6_2 pr.value matches 0 run forceload add 624 208
execute if score #plot_player_6_2 pr.value matches 1 if score #plot_tick_6_2 pr.value matches 0 run forceload add 592 240
execute if score #plot_player_6_2 pr.value matches 1 if score #plot_tick_6_2 pr.value matches 0 run forceload add 624 240
execute if score #plot_player_6_2 pr.value matches 0 if score #plot_tick_6_2 pr.value matches 1 run forceload remove 592 208
execute if score #plot_player_6_2 pr.value matches 0 if score #plot_tick_6_2 pr.value matches 1 run forceload remove 624 208
execute if score #plot_player_6_2 pr.value matches 0 if score #plot_tick_6_2 pr.value matches 1 run forceload remove 592 240
execute if score #plot_player_6_2 pr.value matches 0 if score #plot_tick_6_2 pr.value matches 1 run forceload remove 624 240
execute if score #chunk_loaded_bool pr.value matches 1 unless score #plot_player_6_2 pr.value = #plot_tick_6_2 pr.value positioned 568.0 -64 184.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_player_6_2 pr.value matches 1 if score #plot_tick_6_2 pr.value matches 0 positioned 616 0 232 run function titruc.interactivejump.sys:plot_on
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_player_6_2 pr.value matches 0 if score #plot_tick_6_2 pr.value matches 1 positioned 616 0 232 run function titruc.interactivejump.sys:plot_off
execute if score #chunk_loaded_bool pr.value matches 1 unless score #plot_player_6_2 pr.value = #plot_tick_6_2 pr.value run tag @e[tag=pr.target] remove pr.target
execute if score #chunk_loaded_bool pr.value matches 1 run scoreboard players operation #plot_tick_6_2 pr.value = #plot_player_6_2 pr.value
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_6_2 pr.value matches 1 positioned 572.0 -64 188.0 run scoreboard players set @a[dx=87,dy=383,dz=87,tag=!pr.spectator] pr.plot 1174
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_6_2 pr.value matches 1 positioned 572.0 -64 188.0 run tag @e[dx=87,dy=383,dz=87,tag=!pr.spectator] add pr.target
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_6_2 pr.value matches 1 as @a[tag=pr.target] unless score @s pr.plot = @s pr.plot_previous at @s run function pr:player/plot/move
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_6_2 pr.value matches 1 positioned 616 0 232 run function titruc.interactivejump.sys:tick_plot
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_6_2 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_-5_3 pr.value positioned -488.0 -64 280.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_-5_3 pr.value = #plot_tick_-5_3 pr.value positioned -488.0 -64 280.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_-5_3 pr.value matches 1 if score #plot_tick_-5_3 pr.value matches 0 positioned -440 0 328 run function namespace:plot_on
#execute if score #plot_player_-5_3 pr.value matches 0 if score #plot_tick_-5_3 pr.value matches 1 positioned -440 0 328 run function namespace:plot_off
#execute unless score #plot_player_-5_3 pr.value = #plot_tick_-5_3 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_-5_3 pr.value = #plot_player_-5_3 pr.value
execute if score #plot_tick_-5_3 pr.value matches 1 positioned -484.0 -64 284.0 run scoreboard players set @a[dx=87,dy=383,dz=87,tag=!pr.spectator] pr.plot 1227
#execute if score #plot_tick_-5_3 pr.value matches 1 positioned -484.0 -64 284.0 run tag @e[dx=87,dy=383,dz=87,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_-5_3 pr.value matches 1 as @a[tag=pr.target] unless score @s pr.plot = @s pr.plot_previous at @s run function pr:player/plot/move
#execute if score #plot_tick_-5_3 pr.value matches 1 positioned -440 0 328 run function namespace:tick_plot
#execute if score #plot_tick_-5_3 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_-4_3 pr.value positioned -392.0 -64 280.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
scoreboard players set #check_loaded_bool pr.value 1
execute if score #plot_player_-4_3 pr.value matches 0 if score #plot_tick_-4_3 pr.value matches 0 run scoreboard players set #check_loaded_bool pr.value 0
scoreboard players set #chunk_loaded_bool pr.value 0
execute if score #check_loaded_bool pr.value matches 1 if loaded -368 0 304 if loaded -336 0 304 if loaded -368 0 336 if loaded -336 0 336 run scoreboard players set #chunk_loaded_bool pr.value 1
execute if score #plot_player_-4_3 pr.value matches 1 if score #plot_tick_-4_3 pr.value matches 0 run forceload add -368 304
execute if score #plot_player_-4_3 pr.value matches 1 if score #plot_tick_-4_3 pr.value matches 0 run forceload add -336 304
execute if score #plot_player_-4_3 pr.value matches 1 if score #plot_tick_-4_3 pr.value matches 0 run forceload add -368 336
execute if score #plot_player_-4_3 pr.value matches 1 if score #plot_tick_-4_3 pr.value matches 0 run forceload add -336 336
execute if score #plot_player_-4_3 pr.value matches 0 if score #plot_tick_-4_3 pr.value matches 1 run forceload remove -368 304
execute if score #plot_player_-4_3 pr.value matches 0 if score #plot_tick_-4_3 pr.value matches 1 run forceload remove -336 304
execute if score #plot_player_-4_3 pr.value matches 0 if score #plot_tick_-4_3 pr.value matches 1 run forceload remove -368 336
execute if score #plot_player_-4_3 pr.value matches 0 if score #plot_tick_-4_3 pr.value matches 1 run forceload remove -336 336
execute if score #chunk_loaded_bool pr.value matches 1 unless score #plot_player_-4_3 pr.value = #plot_tick_-4_3 pr.value positioned -392.0 -64 280.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_player_-4_3 pr.value matches 1 if score #plot_tick_-4_3 pr.value matches 0 positioned -344 0 328 run function fabulousfox:plot_on
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_player_-4_3 pr.value matches 0 if score #plot_tick_-4_3 pr.value matches 1 positioned -344 0 328 run function fabulousfox:plot_off
execute if score #chunk_loaded_bool pr.value matches 1 unless score #plot_player_-4_3 pr.value = #plot_tick_-4_3 pr.value run tag @e[tag=pr.target] remove pr.target
execute if score #chunk_loaded_bool pr.value matches 1 run scoreboard players operation #plot_tick_-4_3 pr.value = #plot_player_-4_3 pr.value
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_-4_3 pr.value matches 1 positioned -388.0 -64 284.0 run scoreboard players set @a[dx=87,dy=383,dz=87,tag=!pr.spectator] pr.plot 1228
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_-4_3 pr.value matches 1 positioned -388.0 -64 284.0 run tag @e[dx=87,dy=383,dz=87,tag=!pr.spectator] add pr.target
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_-4_3 pr.value matches 1 as @a[tag=pr.target] unless score @s pr.plot = @s pr.plot_previous at @s run function pr:player/plot/move
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_-4_3 pr.value matches 1 positioned -344 0 328 run function fabulousfox:tick_plot
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_-4_3 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_-2_3 pr.value positioned -200.0 -64 280.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
execute unless score #plot_player_-2_3 pr.value = #plot_tick_-2_3 pr.value positioned -200.0 -64 280.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
execute if score #plot_player_-2_3 pr.value matches 1 if score #plot_tick_-2_3 pr.value matches 0 positioned -152 0 328 run function stabily_time_tower_parkour:plot_on
execute if score #plot_player_-2_3 pr.value matches 0 if score #plot_tick_-2_3 pr.value matches 1 positioned -152 0 328 run function stabily_time_tower_parkour:plot_off
execute unless score #plot_player_-2_3 pr.value = #plot_tick_-2_3 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_-2_3 pr.value = #plot_player_-2_3 pr.value
execute if score #plot_tick_-2_3 pr.value matches 1 positioned -196.0 -64 284.0 run scoreboard players set @a[dx=87,dy=383,dz=87,tag=!pr.spectator] pr.plot 1230
execute if score #plot_tick_-2_3 pr.value matches 1 positioned -196.0 -64 284.0 run tag @e[dx=87,dy=383,dz=87,tag=!pr.spectator] add pr.target
execute if score #plot_tick_-2_3 pr.value matches 1 as @a[tag=pr.target] unless score @s pr.plot = @s pr.plot_previous at @s run function pr:player/plot/move
execute if score #plot_tick_-2_3 pr.value matches 1 positioned -152 0 328 run function stabily_time_tower_parkour:tick_plot
execute if score #plot_tick_-2_3 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_-1_3 pr.value positioned -104.0 -64 280.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
scoreboard players set #check_loaded_bool pr.value 1
execute if score #plot_player_-1_3 pr.value matches 0 if score #plot_tick_-1_3 pr.value matches 0 run scoreboard players set #check_loaded_bool pr.value 0
scoreboard players set #chunk_loaded_bool pr.value 0
execute if score #check_loaded_bool pr.value matches 1 if loaded -80 0 304 if loaded -48 0 304 if loaded -80 0 336 if loaded -48 0 336 run scoreboard players set #chunk_loaded_bool pr.value 1
execute if score #plot_player_-1_3 pr.value matches 1 if score #plot_tick_-1_3 pr.value matches 0 run forceload add -80 304
execute if score #plot_player_-1_3 pr.value matches 1 if score #plot_tick_-1_3 pr.value matches 0 run forceload add -48 304
execute if score #plot_player_-1_3 pr.value matches 1 if score #plot_tick_-1_3 pr.value matches 0 run forceload add -80 336
execute if score #plot_player_-1_3 pr.value matches 1 if score #plot_tick_-1_3 pr.value matches 0 run forceload add -48 336
execute if score #plot_player_-1_3 pr.value matches 0 if score #plot_tick_-1_3 pr.value matches 1 run forceload remove -80 304
execute if score #plot_player_-1_3 pr.value matches 0 if score #plot_tick_-1_3 pr.value matches 1 run forceload remove -48 304
execute if score #plot_player_-1_3 pr.value matches 0 if score #plot_tick_-1_3 pr.value matches 1 run forceload remove -80 336
execute if score #plot_player_-1_3 pr.value matches 0 if score #plot_tick_-1_3 pr.value matches 1 run forceload remove -48 336
execute if score #chunk_loaded_bool pr.value matches 1 unless score #plot_player_-1_3 pr.value = #plot_tick_-1_3 pr.value positioned -104.0 -64 280.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_player_-1_3 pr.value matches 1 if score #plot_tick_-1_3 pr.value matches 0 positioned -56 0 328 run function woutbelt:plot_on
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_player_-1_3 pr.value matches 0 if score #plot_tick_-1_3 pr.value matches 1 positioned -56 0 328 run function woutbelt:plot_off
execute if score #chunk_loaded_bool pr.value matches 1 unless score #plot_player_-1_3 pr.value = #plot_tick_-1_3 pr.value run tag @e[tag=pr.target] remove pr.target
execute if score #chunk_loaded_bool pr.value matches 1 run scoreboard players operation #plot_tick_-1_3 pr.value = #plot_player_-1_3 pr.value
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_-1_3 pr.value matches 1 positioned -100.0 -64 284.0 run scoreboard players set @a[dx=87,dy=383,dz=87,tag=!pr.spectator] pr.plot 1231
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_-1_3 pr.value matches 1 positioned -100.0 -64 284.0 run tag @e[dx=87,dy=383,dz=87,tag=!pr.spectator] add pr.target
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_-1_3 pr.value matches 1 as @a[tag=pr.target] unless score @s pr.plot = @s pr.plot_previous at @s run function pr:player/plot/move
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_-1_3 pr.value matches 1 positioned -56 0 328 run function woutbelt:tick_plot
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_-1_3 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_0_3 pr.value positioned -8.0 -64 280.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
execute unless score #plot_player_0_3 pr.value = #plot_tick_0_3 pr.value positioned -8.0 -64 280.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
execute if score #plot_player_0_3 pr.value matches 1 if score #plot_tick_0_3 pr.value matches 0 positioned 40 0 328 run function rambini:plot_on
execute if score #plot_player_0_3 pr.value matches 0 if score #plot_tick_0_3 pr.value matches 1 positioned 40 0 328 run function rambini:plot_off
execute unless score #plot_player_0_3 pr.value = #plot_tick_0_3 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_0_3 pr.value = #plot_player_0_3 pr.value
execute if score #plot_tick_0_3 pr.value matches 1 positioned -4.0 -64 284.0 run scoreboard players set @a[dx=87,dy=383,dz=87,tag=!pr.spectator] pr.plot 1232
execute if score #plot_tick_0_3 pr.value matches 1 positioned -4.0 -64 284.0 run tag @e[dx=87,dy=383,dz=87,tag=!pr.spectator] add pr.target
execute if score #plot_tick_0_3 pr.value matches 1 as @a[tag=pr.target] unless score @s pr.plot = @s pr.plot_previous at @s run function pr:player/plot/move
execute if score #plot_tick_0_3 pr.value matches 1 positioned 40 0 328 run function rambini:tick_plot
execute if score #plot_tick_0_3 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_1_3 pr.value positioned 88.0 -64 280.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
scoreboard players set #check_loaded_bool pr.value 1
execute if score #plot_player_1_3 pr.value matches 0 if score #plot_tick_1_3 pr.value matches 0 run scoreboard players set #check_loaded_bool pr.value 0
scoreboard players set #chunk_loaded_bool pr.value 0
execute if score #check_loaded_bool pr.value matches 1 if loaded 112 0 304 if loaded 144 0 304 if loaded 112 0 336 if loaded 144 0 336 run scoreboard players set #chunk_loaded_bool pr.value 1
execute if score #plot_player_1_3 pr.value matches 1 if score #plot_tick_1_3 pr.value matches 0 run forceload add 112 304
execute if score #plot_player_1_3 pr.value matches 1 if score #plot_tick_1_3 pr.value matches 0 run forceload add 144 304
execute if score #plot_player_1_3 pr.value matches 1 if score #plot_tick_1_3 pr.value matches 0 run forceload add 112 336
execute if score #plot_player_1_3 pr.value matches 1 if score #plot_tick_1_3 pr.value matches 0 run forceload add 144 336
execute if score #plot_player_1_3 pr.value matches 0 if score #plot_tick_1_3 pr.value matches 1 run forceload remove 112 304
execute if score #plot_player_1_3 pr.value matches 0 if score #plot_tick_1_3 pr.value matches 1 run forceload remove 144 304
execute if score #plot_player_1_3 pr.value matches 0 if score #plot_tick_1_3 pr.value matches 1 run forceload remove 112 336
execute if score #plot_player_1_3 pr.value matches 0 if score #plot_tick_1_3 pr.value matches 1 run forceload remove 144 336
execute if score #chunk_loaded_bool pr.value matches 1 unless score #plot_player_1_3 pr.value = #plot_tick_1_3 pr.value positioned 88.0 -64 280.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_player_1_3 pr.value matches 1 if score #plot_tick_1_3 pr.value matches 0 positioned 136 0 328 run function theswagunicorn:plot_on
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_player_1_3 pr.value matches 0 if score #plot_tick_1_3 pr.value matches 1 positioned 136 0 328 run function theswagunicorn:plot_off
execute if score #chunk_loaded_bool pr.value matches 1 unless score #plot_player_1_3 pr.value = #plot_tick_1_3 pr.value run tag @e[tag=pr.target] remove pr.target
execute if score #chunk_loaded_bool pr.value matches 1 run scoreboard players operation #plot_tick_1_3 pr.value = #plot_player_1_3 pr.value
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_1_3 pr.value matches 1 positioned 92.0 -64 284.0 run scoreboard players set @a[dx=87,dy=383,dz=87,tag=!pr.spectator] pr.plot 1233
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_1_3 pr.value matches 1 positioned 92.0 -64 284.0 run tag @e[dx=87,dy=383,dz=87,tag=!pr.spectator] add pr.target
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_1_3 pr.value matches 1 as @a[tag=pr.target] unless score @s pr.plot = @s pr.plot_previous at @s run function pr:player/plot/move
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_1_3 pr.value matches 1 positioned 136 0 328 run function theswagunicorn:tick_plot
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_1_3 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_2_3 pr.value positioned 184.0 -64 280.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
execute unless score #plot_player_2_3 pr.value = #plot_tick_2_3 pr.value positioned 184.0 -64 280.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
execute if score #plot_player_2_3 pr.value matches 1 if score #plot_tick_2_3 pr.value matches 0 positioned 232 0 328 run function eli_marie:plot_on
execute if score #plot_player_2_3 pr.value matches 0 if score #plot_tick_2_3 pr.value matches 1 positioned 232 0 328 run function eli_marie:plot_off
execute unless score #plot_player_2_3 pr.value = #plot_tick_2_3 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_2_3 pr.value = #plot_player_2_3 pr.value
execute if score #plot_tick_2_3 pr.value matches 1 positioned 188.0 -64 284.0 run scoreboard players set @a[dx=87,dy=383,dz=87,tag=!pr.spectator] pr.plot 1234
execute if score #plot_tick_2_3 pr.value matches 1 positioned 188.0 -64 284.0 run tag @e[dx=87,dy=383,dz=87,tag=!pr.spectator] add pr.target
execute if score #plot_tick_2_3 pr.value matches 1 as @a[tag=pr.target] unless score @s pr.plot = @s pr.plot_previous at @s run function pr:player/plot/move
execute if score #plot_tick_2_3 pr.value matches 1 positioned 232 0 328 run function eli_marie:tick_plot
execute if score #plot_tick_2_3 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_4_3 pr.value positioned 376.0 -64 280.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_4_3 pr.value = #plot_tick_4_3 pr.value positioned 376.0 -64 280.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_4_3 pr.value matches 1 if score #plot_tick_4_3 pr.value matches 0 positioned 424 0 328 run function namespace:plot_on
#execute if score #plot_player_4_3 pr.value matches 0 if score #plot_tick_4_3 pr.value matches 1 positioned 424 0 328 run function namespace:plot_off
#execute unless score #plot_player_4_3 pr.value = #plot_tick_4_3 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_4_3 pr.value = #plot_player_4_3 pr.value
execute if score #plot_tick_4_3 pr.value matches 1 positioned 380.0 -64 284.0 run scoreboard players set @a[dx=87,dy=383,dz=87,tag=!pr.spectator] pr.plot 1236
#execute if score #plot_tick_4_3 pr.value matches 1 positioned 380.0 -64 284.0 run tag @e[dx=87,dy=383,dz=87,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_4_3 pr.value matches 1 as @a[tag=pr.target] unless score @s pr.plot = @s pr.plot_previous at @s run function pr:player/plot/move
#execute if score #plot_tick_4_3 pr.value matches 1 positioned 424 0 328 run function namespace:tick_plot
#execute if score #plot_tick_4_3 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_5_3 pr.value positioned 472.0 -64 280.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
scoreboard players set #check_loaded_bool pr.value 1
execute if score #plot_player_5_3 pr.value matches 0 if score #plot_tick_5_3 pr.value matches 0 run scoreboard players set #check_loaded_bool pr.value 0
scoreboard players set #chunk_loaded_bool pr.value 0
execute if score #check_loaded_bool pr.value matches 1 if loaded 496 0 304 if loaded 528 0 304 if loaded 496 0 336 if loaded 528 0 336 run scoreboard players set #chunk_loaded_bool pr.value 1
execute if score #plot_player_5_3 pr.value matches 1 if score #plot_tick_5_3 pr.value matches 0 run forceload add 496 304
execute if score #plot_player_5_3 pr.value matches 1 if score #plot_tick_5_3 pr.value matches 0 run forceload add 528 304
execute if score #plot_player_5_3 pr.value matches 1 if score #plot_tick_5_3 pr.value matches 0 run forceload add 496 336
execute if score #plot_player_5_3 pr.value matches 1 if score #plot_tick_5_3 pr.value matches 0 run forceload add 528 336
execute if score #plot_player_5_3 pr.value matches 0 if score #plot_tick_5_3 pr.value matches 1 run forceload remove 496 304
execute if score #plot_player_5_3 pr.value matches 0 if score #plot_tick_5_3 pr.value matches 1 run forceload remove 528 304
execute if score #plot_player_5_3 pr.value matches 0 if score #plot_tick_5_3 pr.value matches 1 run forceload remove 496 336
execute if score #plot_player_5_3 pr.value matches 0 if score #plot_tick_5_3 pr.value matches 1 run forceload remove 528 336
execute if score #chunk_loaded_bool pr.value matches 1 unless score #plot_player_5_3 pr.value = #plot_tick_5_3 pr.value positioned 472.0 -64 280.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_player_5_3 pr.value matches 1 if score #plot_tick_5_3 pr.value matches 0 positioned 520 0 328 run function wall_hall:plot_on
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_player_5_3 pr.value matches 0 if score #plot_tick_5_3 pr.value matches 1 positioned 520 0 328 run function wall_hall:plot_off
execute if score #chunk_loaded_bool pr.value matches 1 unless score #plot_player_5_3 pr.value = #plot_tick_5_3 pr.value run tag @e[tag=pr.target] remove pr.target
execute if score #chunk_loaded_bool pr.value matches 1 run scoreboard players operation #plot_tick_5_3 pr.value = #plot_player_5_3 pr.value
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_5_3 pr.value matches 1 positioned 476.0 -64 284.0 run scoreboard players set @a[dx=87,dy=383,dz=87,tag=!pr.spectator] pr.plot 1237
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_5_3 pr.value matches 1 positioned 476.0 -64 284.0 run tag @e[dx=87,dy=383,dz=87,tag=!pr.spectator] add pr.target
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_5_3 pr.value matches 1 as @a[tag=pr.target] unless score @s pr.plot = @s pr.plot_previous at @s run function pr:player/plot/move
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_5_3 pr.value matches 1 positioned 520 0 328 run function wall_hall:tick_plot
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_5_3 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_-3_4 pr.value positioned -296.0 -64 376.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
scoreboard players set #check_loaded_bool pr.value 1
execute if score #plot_player_-3_4 pr.value matches 0 if score #plot_tick_-3_4 pr.value matches 0 run scoreboard players set #check_loaded_bool pr.value 0
scoreboard players set #chunk_loaded_bool pr.value 0
execute if score #check_loaded_bool pr.value matches 1 if loaded -272 0 400 if loaded -240 0 400 if loaded -272 0 432 if loaded -240 0 432 run scoreboard players set #chunk_loaded_bool pr.value 1
execute if score #plot_player_-3_4 pr.value matches 1 if score #plot_tick_-3_4 pr.value matches 0 run forceload add -272 400
execute if score #plot_player_-3_4 pr.value matches 1 if score #plot_tick_-3_4 pr.value matches 0 run forceload add -240 400
execute if score #plot_player_-3_4 pr.value matches 1 if score #plot_tick_-3_4 pr.value matches 0 run forceload add -272 432
execute if score #plot_player_-3_4 pr.value matches 1 if score #plot_tick_-3_4 pr.value matches 0 run forceload add -240 432
execute if score #plot_player_-3_4 pr.value matches 0 if score #plot_tick_-3_4 pr.value matches 1 run forceload remove -272 400
execute if score #plot_player_-3_4 pr.value matches 0 if score #plot_tick_-3_4 pr.value matches 1 run forceload remove -240 400
execute if score #plot_player_-3_4 pr.value matches 0 if score #plot_tick_-3_4 pr.value matches 1 run forceload remove -272 432
execute if score #plot_player_-3_4 pr.value matches 0 if score #plot_tick_-3_4 pr.value matches 1 run forceload remove -240 432
execute if score #chunk_loaded_bool pr.value matches 1 unless score #plot_player_-3_4 pr.value = #plot_tick_-3_4 pr.value positioned -296.0 -64 376.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_player_-3_4 pr.value matches 1 if score #plot_tick_-3_4 pr.value matches 0 positioned -248 0 424 run function zombie1111:plot_on
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_player_-3_4 pr.value matches 0 if score #plot_tick_-3_4 pr.value matches 1 positioned -248 0 424 run function zombie1111:plot_off
execute if score #chunk_loaded_bool pr.value matches 1 unless score #plot_player_-3_4 pr.value = #plot_tick_-3_4 pr.value run tag @e[tag=pr.target] remove pr.target
execute if score #chunk_loaded_bool pr.value matches 1 run scoreboard players operation #plot_tick_-3_4 pr.value = #plot_player_-3_4 pr.value
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_-3_4 pr.value matches 1 positioned -292.0 -64 380.0 run scoreboard players set @a[dx=87,dy=383,dz=87,tag=!pr.spectator] pr.plot 1293
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_-3_4 pr.value matches 1 positioned -292.0 -64 380.0 run tag @e[dx=87,dy=383,dz=87,tag=!pr.spectator] add pr.target
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_-3_4 pr.value matches 1 as @a[tag=pr.target] unless score @s pr.plot = @s pr.plot_previous at @s run function pr:player/plot/move
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_-3_4 pr.value matches 1 positioned -248 0 424 run function zombie1111:tick_plot
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_-3_4 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_-2_4 pr.value positioned -200.0 -64 376.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
execute unless score #plot_player_-2_4 pr.value = #plot_tick_-2_4 pr.value positioned -200.0 -64 376.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
execute if score #plot_player_-2_4 pr.value matches 1 if score #plot_tick_-2_4 pr.value matches 0 positioned -152 0 424 run function platform:plot_on
execute if score #plot_player_-2_4 pr.value matches 0 if score #plot_tick_-2_4 pr.value matches 1 positioned -152 0 424 run function platform:plot_off
execute unless score #plot_player_-2_4 pr.value = #plot_tick_-2_4 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_-2_4 pr.value = #plot_player_-2_4 pr.value
execute if score #plot_tick_-2_4 pr.value matches 1 positioned -196.0 -64 380.0 run scoreboard players set @a[dx=87,dy=383,dz=87,tag=!pr.spectator] pr.plot 1294
execute if score #plot_tick_-2_4 pr.value matches 1 positioned -196.0 -64 380.0 run tag @e[dx=87,dy=383,dz=87,tag=!pr.spectator] add pr.target
execute if score #plot_tick_-2_4 pr.value matches 1 as @a[tag=pr.target] unless score @s pr.plot = @s pr.plot_previous at @s run function pr:player/plot/move
execute if score #plot_tick_-2_4 pr.value matches 1 positioned -152 0 424 run function platform:tick_plot
execute if score #plot_tick_-2_4 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_-1_4 pr.value positioned -104.0 -64 376.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
scoreboard players set #check_loaded_bool pr.value 1
execute if score #plot_player_-1_4 pr.value matches 0 if score #plot_tick_-1_4 pr.value matches 0 run scoreboard players set #check_loaded_bool pr.value 0
scoreboard players set #chunk_loaded_bool pr.value 0
execute if score #check_loaded_bool pr.value matches 1 if loaded -80 0 400 if loaded -48 0 400 if loaded -80 0 432 if loaded -48 0 432 run scoreboard players set #chunk_loaded_bool pr.value 1
execute if score #plot_player_-1_4 pr.value matches 1 if score #plot_tick_-1_4 pr.value matches 0 run forceload add -80 400
execute if score #plot_player_-1_4 pr.value matches 1 if score #plot_tick_-1_4 pr.value matches 0 run forceload add -48 400
execute if score #plot_player_-1_4 pr.value matches 1 if score #plot_tick_-1_4 pr.value matches 0 run forceload add -80 432
execute if score #plot_player_-1_4 pr.value matches 1 if score #plot_tick_-1_4 pr.value matches 0 run forceload add -48 432
execute if score #plot_player_-1_4 pr.value matches 0 if score #plot_tick_-1_4 pr.value matches 1 run forceload remove -80 400
execute if score #plot_player_-1_4 pr.value matches 0 if score #plot_tick_-1_4 pr.value matches 1 run forceload remove -48 400
execute if score #plot_player_-1_4 pr.value matches 0 if score #plot_tick_-1_4 pr.value matches 1 run forceload remove -80 432
execute if score #plot_player_-1_4 pr.value matches 0 if score #plot_tick_-1_4 pr.value matches 1 run forceload remove -48 432
execute if score #chunk_loaded_bool pr.value matches 1 unless score #plot_player_-1_4 pr.value = #plot_tick_-1_4 pr.value positioned -104.0 -64 376.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_player_-1_4 pr.value matches 1 if score #plot_tick_-1_4 pr.value matches 0 positioned -56 0 424 run function brosephmc_mc_pr:plot_on
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_player_-1_4 pr.value matches 0 if score #plot_tick_-1_4 pr.value matches 1 positioned -56 0 424 run function brosephmc_mc_pr:plot_off
execute if score #chunk_loaded_bool pr.value matches 1 unless score #plot_player_-1_4 pr.value = #plot_tick_-1_4 pr.value run tag @e[tag=pr.target] remove pr.target
execute if score #chunk_loaded_bool pr.value matches 1 run scoreboard players operation #plot_tick_-1_4 pr.value = #plot_player_-1_4 pr.value
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_-1_4 pr.value matches 1 positioned -100.0 -64 380.0 run scoreboard players set @a[dx=87,dy=383,dz=87,tag=!pr.spectator] pr.plot 1295
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_-1_4 pr.value matches 1 positioned -100.0 -64 380.0 run tag @e[dx=87,dy=383,dz=87,tag=!pr.spectator] add pr.target
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_-1_4 pr.value matches 1 as @a[tag=pr.target] unless score @s pr.plot = @s pr.plot_previous at @s run function pr:player/plot/move
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_-1_4 pr.value matches 1 positioned -56 0 424 run function brosephmc_mc_pr:tick_plot
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_-1_4 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_0_4 pr.value positioned -8.0 -64 376.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_0_4 pr.value = #plot_tick_0_4 pr.value positioned -8.0 -64 376.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_0_4 pr.value matches 1 if score #plot_tick_0_4 pr.value matches 0 positioned 40 0 424 run function namespace:plot_on
#execute if score #plot_player_0_4 pr.value matches 0 if score #plot_tick_0_4 pr.value matches 1 positioned 40 0 424 run function namespace:plot_off
#execute unless score #plot_player_0_4 pr.value = #plot_tick_0_4 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_0_4 pr.value = #plot_player_0_4 pr.value
execute if score #plot_tick_0_4 pr.value matches 1 positioned -4.0 -64 380.0 run scoreboard players set @a[dx=87,dy=383,dz=87,tag=!pr.spectator] pr.plot 1296
#execute if score #plot_tick_0_4 pr.value matches 1 positioned -4.0 -64 380.0 run tag @e[dx=87,dy=383,dz=87,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_0_4 pr.value matches 1 as @a[tag=pr.target] unless score @s pr.plot = @s pr.plot_previous at @s run function pr:player/plot/move
#execute if score #plot_tick_0_4 pr.value matches 1 positioned 40 0 424 run function namespace:tick_plot
#execute if score #plot_tick_0_4 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_1_4 pr.value positioned 88.0 -64 376.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
execute unless score #plot_player_1_4 pr.value = #plot_tick_1_4 pr.value positioned 88.0 -64 376.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
execute if score #plot_player_1_4 pr.value matches 1 if score #plot_tick_1_4 pr.value matches 0 positioned 136 0 424 run function rex_saltus_neon:plot_on
execute if score #plot_player_1_4 pr.value matches 0 if score #plot_tick_1_4 pr.value matches 1 positioned 136 0 424 run function rex_saltus_neon:plot_off
execute unless score #plot_player_1_4 pr.value = #plot_tick_1_4 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_1_4 pr.value = #plot_player_1_4 pr.value
execute if score #plot_tick_1_4 pr.value matches 1 positioned 92.0 -64 380.0 run scoreboard players set @a[dx=87,dy=383,dz=87,tag=!pr.spectator] pr.plot 1297
execute if score #plot_tick_1_4 pr.value matches 1 positioned 92.0 -64 380.0 run tag @e[dx=87,dy=383,dz=87,tag=!pr.spectator] add pr.target
execute if score #plot_tick_1_4 pr.value matches 1 as @a[tag=pr.target] unless score @s pr.plot = @s pr.plot_previous at @s run function pr:player/plot/move
execute if score #plot_tick_1_4 pr.value matches 1 positioned 136 0 424 run function rex_saltus_neon:tick_plot
execute if score #plot_tick_1_4 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_2_4 pr.value positioned 184.0 -64 376.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_2_4 pr.value = #plot_tick_2_4 pr.value positioned 184.0 -64 376.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_2_4 pr.value matches 1 if score #plot_tick_2_4 pr.value matches 0 positioned 232 0 424 run function namespace:plot_on
#execute if score #plot_player_2_4 pr.value matches 0 if score #plot_tick_2_4 pr.value matches 1 positioned 232 0 424 run function namespace:plot_off
#execute unless score #plot_player_2_4 pr.value = #plot_tick_2_4 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_2_4 pr.value = #plot_player_2_4 pr.value
execute if score #plot_tick_2_4 pr.value matches 1 positioned 188.0 -64 380.0 run scoreboard players set @a[dx=87,dy=383,dz=87,tag=!pr.spectator] pr.plot 1298
#execute if score #plot_tick_2_4 pr.value matches 1 positioned 188.0 -64 380.0 run tag @e[dx=87,dy=383,dz=87,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_2_4 pr.value matches 1 as @a[tag=pr.target] unless score @s pr.plot = @s pr.plot_previous at @s run function pr:player/plot/move
#execute if score #plot_tick_2_4 pr.value matches 1 positioned 232 0 424 run function namespace:tick_plot
#execute if score #plot_tick_2_4 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_3_4 pr.value positioned 280.0 -64 376.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_3_4 pr.value = #plot_tick_3_4 pr.value positioned 280.0 -64 376.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_3_4 pr.value matches 1 if score #plot_tick_3_4 pr.value matches 0 positioned 328 0 424 run function namespace:plot_on
#execute if score #plot_player_3_4 pr.value matches 0 if score #plot_tick_3_4 pr.value matches 1 positioned 328 0 424 run function namespace:plot_off
#execute unless score #plot_player_3_4 pr.value = #plot_tick_3_4 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_3_4 pr.value = #plot_player_3_4 pr.value
execute if score #plot_tick_3_4 pr.value matches 1 positioned 284.0 -64 380.0 run scoreboard players set @a[dx=87,dy=383,dz=87,tag=!pr.spectator] pr.plot 1299
#execute if score #plot_tick_3_4 pr.value matches 1 positioned 284.0 -64 380.0 run tag @e[dx=87,dy=383,dz=87,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_3_4 pr.value matches 1 as @a[tag=pr.target] unless score @s pr.plot = @s pr.plot_previous at @s run function pr:player/plot/move
#execute if score #plot_tick_3_4 pr.value matches 1 positioned 328 0 424 run function namespace:tick_plot
#execute if score #plot_tick_3_4 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_-3_5 pr.value positioned -296.0 -64 472.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
scoreboard players set #check_loaded_bool pr.value 1
execute if score #plot_player_-3_5 pr.value matches 0 if score #plot_tick_-3_5 pr.value matches 0 run scoreboard players set #check_loaded_bool pr.value 0
scoreboard players set #chunk_loaded_bool pr.value 0
execute if score #check_loaded_bool pr.value matches 1 if loaded -272 0 496 if loaded -240 0 496 if loaded -272 0 528 if loaded -240 0 528 run scoreboard players set #chunk_loaded_bool pr.value 1
execute if score #plot_player_-3_5 pr.value matches 1 if score #plot_tick_-3_5 pr.value matches 0 run forceload add -272 496
execute if score #plot_player_-3_5 pr.value matches 1 if score #plot_tick_-3_5 pr.value matches 0 run forceload add -240 496
execute if score #plot_player_-3_5 pr.value matches 1 if score #plot_tick_-3_5 pr.value matches 0 run forceload add -272 528
execute if score #plot_player_-3_5 pr.value matches 1 if score #plot_tick_-3_5 pr.value matches 0 run forceload add -240 528
execute if score #plot_player_-3_5 pr.value matches 0 if score #plot_tick_-3_5 pr.value matches 1 run forceload remove -272 496
execute if score #plot_player_-3_5 pr.value matches 0 if score #plot_tick_-3_5 pr.value matches 1 run forceload remove -240 496
execute if score #plot_player_-3_5 pr.value matches 0 if score #plot_tick_-3_5 pr.value matches 1 run forceload remove -272 528
execute if score #plot_player_-3_5 pr.value matches 0 if score #plot_tick_-3_5 pr.value matches 1 run forceload remove -240 528
execute if score #chunk_loaded_bool pr.value matches 1 unless score #plot_player_-3_5 pr.value = #plot_tick_-3_5 pr.value positioned -296.0 -64 472.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_player_-3_5 pr.value matches 1 if score #plot_tick_-3_5 pr.value matches 0 positioned -248 0 520 run function simondmc:plot_on
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_player_-3_5 pr.value matches 0 if score #plot_tick_-3_5 pr.value matches 1 positioned -248 0 520 run function simondmc:plot_off
execute if score #chunk_loaded_bool pr.value matches 1 unless score #plot_player_-3_5 pr.value = #plot_tick_-3_5 pr.value run tag @e[tag=pr.target] remove pr.target
execute if score #chunk_loaded_bool pr.value matches 1 run scoreboard players operation #plot_tick_-3_5 pr.value = #plot_player_-3_5 pr.value
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_-3_5 pr.value matches 1 positioned -292.0 -64 476.0 run scoreboard players set @a[dx=87,dy=383,dz=87,tag=!pr.spectator] pr.plot 1357
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_-3_5 pr.value matches 1 positioned -292.0 -64 476.0 run tag @e[dx=87,dy=383,dz=87,tag=!pr.spectator] add pr.target
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_-3_5 pr.value matches 1 as @a[tag=pr.target] unless score @s pr.plot = @s pr.plot_previous at @s run function pr:player/plot/move
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_-3_5 pr.value matches 1 positioned -248 0 520 run function simondmc:tick_plot
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_-3_5 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_-2_5 pr.value positioned -200.0 -64 472.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
execute unless score #plot_player_-2_5 pr.value = #plot_tick_-2_5 pr.value positioned -200.0 -64 472.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
execute if score #plot_player_-2_5 pr.value matches 1 if score #plot_tick_-2_5 pr.value matches 0 positioned -152 0 520 run function captainargus:plot_on
execute if score #plot_player_-2_5 pr.value matches 0 if score #plot_tick_-2_5 pr.value matches 1 positioned -152 0 520 run function captainargus:plot_off
execute unless score #plot_player_-2_5 pr.value = #plot_tick_-2_5 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_-2_5 pr.value = #plot_player_-2_5 pr.value
execute if score #plot_tick_-2_5 pr.value matches 1 positioned -196.0 -64 476.0 run scoreboard players set @a[dx=87,dy=383,dz=87,tag=!pr.spectator] pr.plot 1358
execute if score #plot_tick_-2_5 pr.value matches 1 positioned -196.0 -64 476.0 run tag @e[dx=87,dy=383,dz=87,tag=!pr.spectator] add pr.target
execute if score #plot_tick_-2_5 pr.value matches 1 as @a[tag=pr.target] unless score @s pr.plot = @s pr.plot_previous at @s run function pr:player/plot/move
execute if score #plot_tick_-2_5 pr.value matches 1 positioned -152 0 520 run function captainargus:tick_plot
execute if score #plot_tick_-2_5 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_-1_5 pr.value positioned -104.0 -64 472.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
execute unless score #plot_player_-1_5 pr.value = #plot_tick_-1_5 pr.value positioned -104.0 -64 472.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
execute if score #plot_player_-1_5 pr.value matches 1 if score #plot_tick_-1_5 pr.value matches 0 positioned -56 0 520 run function funkytoc_moon:plot_on
execute if score #plot_player_-1_5 pr.value matches 0 if score #plot_tick_-1_5 pr.value matches 1 positioned -56 0 520 run function funkytoc_moon:plot_off
execute unless score #plot_player_-1_5 pr.value = #plot_tick_-1_5 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_-1_5 pr.value = #plot_player_-1_5 pr.value
execute if score #plot_tick_-1_5 pr.value matches 1 positioned -100.0 -64 476.0 run scoreboard players set @a[dx=87,dy=383,dz=87,tag=!pr.spectator] pr.plot 1359
execute if score #plot_tick_-1_5 pr.value matches 1 positioned -100.0 -64 476.0 run tag @e[dx=87,dy=383,dz=87,tag=!pr.spectator] add pr.target
execute if score #plot_tick_-1_5 pr.value matches 1 as @a[tag=pr.target] unless score @s pr.plot = @s pr.plot_previous at @s run function pr:player/plot/move
execute if score #plot_tick_-1_5 pr.value matches 1 positioned -56 0 520 run function funkytoc_moon:tick_plot
execute if score #plot_tick_-1_5 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_1_5 pr.value positioned 88.0 -64 472.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
scoreboard players set #check_loaded_bool pr.value 1
execute if score #plot_player_1_5 pr.value matches 0 if score #plot_tick_1_5 pr.value matches 0 run scoreboard players set #check_loaded_bool pr.value 0
scoreboard players set #chunk_loaded_bool pr.value 0
execute if score #check_loaded_bool pr.value matches 1 if loaded 112 0 496 if loaded 144 0 496 if loaded 112 0 528 if loaded 144 0 528 run scoreboard players set #chunk_loaded_bool pr.value 1
execute if score #plot_player_1_5 pr.value matches 1 if score #plot_tick_1_5 pr.value matches 0 run forceload add 112 496
execute if score #plot_player_1_5 pr.value matches 1 if score #plot_tick_1_5 pr.value matches 0 run forceload add 144 496
execute if score #plot_player_1_5 pr.value matches 1 if score #plot_tick_1_5 pr.value matches 0 run forceload add 112 528
execute if score #plot_player_1_5 pr.value matches 1 if score #plot_tick_1_5 pr.value matches 0 run forceload add 144 528
execute if score #plot_player_1_5 pr.value matches 0 if score #plot_tick_1_5 pr.value matches 1 run forceload remove 112 496
execute if score #plot_player_1_5 pr.value matches 0 if score #plot_tick_1_5 pr.value matches 1 run forceload remove 144 496
execute if score #plot_player_1_5 pr.value matches 0 if score #plot_tick_1_5 pr.value matches 1 run forceload remove 112 528
execute if score #plot_player_1_5 pr.value matches 0 if score #plot_tick_1_5 pr.value matches 1 run forceload remove 144 528
execute if score #chunk_loaded_bool pr.value matches 1 unless score #plot_player_1_5 pr.value = #plot_tick_1_5 pr.value positioned 88.0 -64 472.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_player_1_5 pr.value matches 1 if score #plot_tick_1_5 pr.value matches 0 positioned 136 0 520 run function inquognito:plot_on
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_player_1_5 pr.value matches 0 if score #plot_tick_1_5 pr.value matches 1 positioned 136 0 520 run function inquognito:plot_off
execute if score #chunk_loaded_bool pr.value matches 1 unless score #plot_player_1_5 pr.value = #plot_tick_1_5 pr.value run tag @e[tag=pr.target] remove pr.target
execute if score #chunk_loaded_bool pr.value matches 1 run scoreboard players operation #plot_tick_1_5 pr.value = #plot_player_1_5 pr.value
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_1_5 pr.value matches 1 positioned 92.0 -64 476.0 run scoreboard players set @a[dx=87,dy=383,dz=87,tag=!pr.spectator] pr.plot 1361
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_1_5 pr.value matches 1 positioned 92.0 -64 476.0 run tag @e[dx=87,dy=383,dz=87,tag=!pr.spectator] add pr.target
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_1_5 pr.value matches 1 as @a[tag=pr.target] unless score @s pr.plot = @s pr.plot_previous at @s run function pr:player/plot/move
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_1_5 pr.value matches 1 positioned 136 0 520 run function inquognito:tick_plot
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_1_5 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_2_5 pr.value positioned 184.0 -64 472.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_2_5 pr.value = #plot_tick_2_5 pr.value positioned 184.0 -64 472.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_2_5 pr.value matches 1 if score #plot_tick_2_5 pr.value matches 0 positioned 232 0 520 run function namespace:plot_on
#execute if score #plot_player_2_5 pr.value matches 0 if score #plot_tick_2_5 pr.value matches 1 positioned 232 0 520 run function namespace:plot_off
#execute unless score #plot_player_2_5 pr.value = #plot_tick_2_5 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_2_5 pr.value = #plot_player_2_5 pr.value
execute if score #plot_tick_2_5 pr.value matches 1 positioned 188.0 -64 476.0 run scoreboard players set @a[dx=87,dy=383,dz=87,tag=!pr.spectator] pr.plot 1362
#execute if score #plot_tick_2_5 pr.value matches 1 positioned 188.0 -64 476.0 run tag @e[dx=87,dy=383,dz=87,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_2_5 pr.value matches 1 as @a[tag=pr.target] unless score @s pr.plot = @s pr.plot_previous at @s run function pr:player/plot/move
#execute if score #plot_tick_2_5 pr.value matches 1 positioned 232 0 520 run function namespace:tick_plot
#execute if score #plot_tick_2_5 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_3_5 pr.value positioned 280.0 -64 472.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_3_5 pr.value = #plot_tick_3_5 pr.value positioned 280.0 -64 472.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_3_5 pr.value matches 1 if score #plot_tick_3_5 pr.value matches 0 positioned 328 0 520 run function namespace:plot_on
#execute if score #plot_player_3_5 pr.value matches 0 if score #plot_tick_3_5 pr.value matches 1 positioned 328 0 520 run function namespace:plot_off
#execute unless score #plot_player_3_5 pr.value = #plot_tick_3_5 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_3_5 pr.value = #plot_player_3_5 pr.value
execute if score #plot_tick_3_5 pr.value matches 1 positioned 284.0 -64 476.0 run scoreboard players set @a[dx=87,dy=383,dz=87,tag=!pr.spectator] pr.plot 1363
#execute if score #plot_tick_3_5 pr.value matches 1 positioned 284.0 -64 476.0 run tag @e[dx=87,dy=383,dz=87,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_3_5 pr.value matches 1 as @a[tag=pr.target] unless score @s pr.plot = @s pr.plot_previous at @s run function pr:player/plot/move
#execute if score #plot_tick_3_5 pr.value matches 1 positioned 328 0 520 run function namespace:tick_plot
#execute if score #plot_tick_3_5 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_-2_6 pr.value positioned -200.0 -64 568.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
#execute unless score #plot_player_-2_6 pr.value = #plot_tick_-2_6 pr.value positioned -200.0 -64 568.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
#execute if score #plot_player_-2_6 pr.value matches 1 if score #plot_tick_-2_6 pr.value matches 0 positioned -152 0 616 run function namespace:plot_on
#execute if score #plot_player_-2_6 pr.value matches 0 if score #plot_tick_-2_6 pr.value matches 1 positioned -152 0 616 run function namespace:plot_off
#execute unless score #plot_player_-2_6 pr.value = #plot_tick_-2_6 pr.value run tag @e[tag=pr.target] remove pr.target
scoreboard players operation #plot_tick_-2_6 pr.value = #plot_player_-2_6 pr.value
execute if score #plot_tick_-2_6 pr.value matches 1 positioned -196.0 -64 572.0 run scoreboard players set @a[dx=87,dy=383,dz=87,tag=!pr.spectator] pr.plot 1422
#execute if score #plot_tick_-2_6 pr.value matches 1 positioned -196.0 -64 572.0 run tag @e[dx=87,dy=383,dz=87,tag=!pr.spectator] add pr.target
#execute if score #plot_tick_-2_6 pr.value matches 1 as @a[tag=pr.target] unless score @s pr.plot = @s pr.plot_previous at @s run function pr:player/plot/move
#execute if score #plot_tick_-2_6 pr.value matches 1 positioned -152 0 616 run function namespace:tick_plot
#execute if score #plot_tick_-2_6 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target



execute store result score #plot_player_2_6 pr.value positioned 184.0 -64 568.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]
scoreboard players set #check_loaded_bool pr.value 1
execute if score #plot_player_2_6 pr.value matches 0 if score #plot_tick_2_6 pr.value matches 0 run scoreboard players set #check_loaded_bool pr.value 0
scoreboard players set #chunk_loaded_bool pr.value 0
execute if score #check_loaded_bool pr.value matches 1 if loaded 208 0 592 if loaded 240 0 592 if loaded 208 0 624 if loaded 240 0 624 run scoreboard players set #chunk_loaded_bool pr.value 1
execute if score #plot_player_2_6 pr.value matches 1 if score #plot_tick_2_6 pr.value matches 0 run forceload add 208 592
execute if score #plot_player_2_6 pr.value matches 1 if score #plot_tick_2_6 pr.value matches 0 run forceload add 240 592
execute if score #plot_player_2_6 pr.value matches 1 if score #plot_tick_2_6 pr.value matches 0 run forceload add 208 624
execute if score #plot_player_2_6 pr.value matches 1 if score #plot_tick_2_6 pr.value matches 0 run forceload add 240 624
execute if score #plot_player_2_6 pr.value matches 0 if score #plot_tick_2_6 pr.value matches 1 run forceload remove 208 592
execute if score #plot_player_2_6 pr.value matches 0 if score #plot_tick_2_6 pr.value matches 1 run forceload remove 240 592
execute if score #plot_player_2_6 pr.value matches 0 if score #plot_tick_2_6 pr.value matches 1 run forceload remove 208 624
execute if score #plot_player_2_6 pr.value matches 0 if score #plot_tick_2_6 pr.value matches 1 run forceload remove 240 624
execute if score #chunk_loaded_bool pr.value matches 1 unless score #plot_player_2_6 pr.value = #plot_tick_2_6 pr.value positioned 184.0 -64 568.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_player_2_6 pr.value matches 1 if score #plot_tick_2_6 pr.value matches 0 positioned 232 0 616 run function lifeely:plot_on
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_player_2_6 pr.value matches 0 if score #plot_tick_2_6 pr.value matches 1 positioned 232 0 616 run function lifeely:plot_off
execute if score #chunk_loaded_bool pr.value matches 1 unless score #plot_player_2_6 pr.value = #plot_tick_2_6 pr.value run tag @e[tag=pr.target] remove pr.target
execute if score #chunk_loaded_bool pr.value matches 1 run scoreboard players operation #plot_tick_2_6 pr.value = #plot_player_2_6 pr.value
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_2_6 pr.value matches 1 positioned 188.0 -64 572.0 run scoreboard players set @a[dx=87,dy=383,dz=87,tag=!pr.spectator] pr.plot 1426
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_2_6 pr.value matches 1 positioned 188.0 -64 572.0 run tag @e[dx=87,dy=383,dz=87,tag=!pr.spectator] add pr.target
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_2_6 pr.value matches 1 as @a[tag=pr.target] unless score @s pr.plot = @s pr.plot_previous at @s run function pr:player/plot/move
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_2_6 pr.value matches 1 positioned 232 0 616 run function lifeely:tick_plot
execute if score #chunk_loaded_bool pr.value matches 1 if score #plot_tick_2_6 pr.value matches 1 run tag @e[tag=pr.target] remove pr.target