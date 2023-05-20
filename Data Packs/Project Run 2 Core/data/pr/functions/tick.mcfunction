# Manage world border timer

execute store result score #world_border_diameter pr.value run worldborder get
execute if score #world_border_reset_timer pr.value matches 0 run function pr:time/reset

scoreboard players operation #time_differential pr.value = #world_border_diameter pr.value
scoreboard players operation #time_differential pr.value -= #previous_world_border_diameter pr.value

execute unless score #world_border_diameter pr.value matches 59900000..59990000 run function pr:time/reset
execute if score #time_differential pr.value matches 1000.. run function pr:time/reset
execute if score #time_differential pr.value matches 0..999 unless score #world_border_diameter pr.value matches 59990000.. run scoreboard players operation #time pr.value += #time_differential pr.value

execute if score #world_border_reset_timer pr.value matches 000 run scoreboard players set #previous_world_border_diameter pr.value 59900000
execute if score #world_border_reset_timer pr.value matches 1.. run scoreboard players operation #previous_world_border_diameter pr.value = #world_border_diameter pr.value

scoreboard players add #world_border_reset_timer pr.value 1
execute if score #world_border_reset_timer pr.value matches 200.. run scoreboard players set #world_border_reset_timer pr.value 0







# Player functions

scoreboard players enable @a lobby
scoreboard players enable @a spectate
scoreboard players enable @a checkpoint
scoreboard players enable @a warp
scoreboard players enable @a coords
scoreboard players enable @a plot
scoreboard players enable @a relative

scoreboard players add #global pr.ticks 1
scoreboard players add @a pr.ticks 1
execute as @a unless score @s pr.ticks = #global pr.ticks at @s run function pr:player/login
execute as @a unless score @s pr.plot = @s pr.plot_previous at @s run function pr:player/plot/move
execute as @a unless score @s pr.id = @s pr.id store result score @s pr.id run scoreboard players add #global pr.id 1

execute as @a if score @s pr.plot = #spawn_plot pr.value run scoreboard players set @s pr.time 0
execute as @a unless score @s pr.plot = #spawn_plot pr.value run function pr:player/time/tick
scoreboard players operation #previous_time pr.value = #time pr.value

execute as @e[type=player,scores={pr.death=1..}] at @s run function pr:player/respawn
execute as @a[scores={lobby=1..}] run function pr:player/checkpoint/lobby
execute as @a[scores={spectate=1..}] run function pr:player/spectate
execute as @a[scores={checkpoint=1..}] run function pr:player/checkpoint/send_to
execute as @a[scores={warp=1..}] run function pr:player/warp
execute as @a[scores={coords=1..}] run function pr:player/coords
execute as @a[scores={plot=1..}] at @s run function pr:player/plot/warp/main
execute as @a[scores={relative=1..}] at @s run function pr:player/relative

effect give @a saturation infinite 0 true

execute as @a[scores={pr.stop_launch_sound=1..}] run stopsound @a[distance=..32] block minecraft:entity.generic.explode
scoreboard players remove @a[scores={pr.stop_launch_sound=1..}] pr.stop_launch_sound 1

execute as @a[tag=pr.launch_test] at @s run function pr:player/launch/apply/forward







# Tick plots

function pr:plot/main







# Move plots

execute as @e[type=marker,tag=pr.plot_mover] at @s run function pr:plot/move/main