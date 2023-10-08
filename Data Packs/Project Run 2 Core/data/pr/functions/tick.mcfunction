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

scoreboard players operation #time_start pr.value = #time pr.value







# Player functions

scoreboard players enable @a lobby
scoreboard players enable @a spectate
scoreboard players enable @a checkpoint
scoreboard players enable @a[tag=admin] warp
scoreboard players enable @a[tag=admin] coords
scoreboard players enable @a[tag=admin] plot
scoreboard players enable @a[tag=admin] relative
scoreboard players enable @a night_vision

scoreboard players reset @a[tag=!admin] warp
scoreboard players reset @a[tag=!admin] coords
scoreboard players reset @a[tag=!admin] plot
scoreboard players reset @a[tag=!admin] relative

execute as @a unless score @s pr.id = @s pr.id store result score @s pr.id run scoreboard players add #global pr.id 1

scoreboard players add #global pr.ticks 1
scoreboard players add @a pr.ticks 1
execute as @a unless score @s pr.ticks = #global pr.ticks at @s run function pr:player/login

execute as @a unless score @s pr.night_vision = @s pr.night_vision run scoreboard players set @s pr.night_vision 1
effect give @a[team=pr.spectator,scores={pr.night_vision=1}] night_vision infinite 0 true

clear @a[tag=!pr.self_checkpoint,scores={pr.load_checkpoint_item=1..}] warped_fungus_on_a_stick{load_checkpoint:1b}
clear @a[tag=!pr.self_checkpoint,scores={pr.save_checkpoint_item=1..}] warped_fungus_on_a_stick{save_checkpoint:1b}
scoreboard players set @a[tag=!pr.self_checkpoint,scores={pr.load_checkpoint_item=1..}] pr.load_checkpoint_item 0
scoreboard players set @a[tag=!pr.self_checkpoint,scores={pr.save_checkpoint_item=1..}] pr.save_checkpoint_item 0

execute as @a[tag=pr.self_checkpoint] at @s run function pr:player/checkpoint/self
scoreboard players set @a pr.click 0

execute as @e[type=player,scores={pr.death=1..}] at @s run function pr:player/respawn

execute as @a[team=pr.player,tag=pr.plate_checkpoint,tag=!pr.plate_checkpoint_cooldown] at @s if block ~ ~ ~ light_weighted_pressure_plate run function pr:player/checkpoint/plate
execute as @a[tag=pr.plate_checkpoint_cooldown] at @s unless block ~ ~ ~ light_weighted_pressure_plate run tag @s remove pr.plate_checkpoint_cooldown

execute as @a[team=pr.spectator,scores={checkpoint=1..}] run scoreboard players set @s lobby 1
execute as @a[team=pr.spectator,scores={checkpoint=1..}] run scoreboard players set @s checkpoint 0

execute as @a[team=] run trigger spectate

execute as @a[scores={lobby=1..}] run function pr:player/checkpoint/lobby
execute as @a[scores={spectate=1..}] run function pr:player/spectate
execute as @a[scores={checkpoint=1..}] run function pr:player/checkpoint/send_to
execute as @a[scores={warp=1..}] run function pr:player/warp
execute as @a[scores={coords=1..}] run function pr:player/coords
execute as @a[scores={plot=1..}] at @s run function pr:player/plot/warp/main
execute as @a[scores={relative=1..}] at @s run function pr:player/relative
execute as @a[scores={night_vision=1..}] at @s run function pr:player/night_vision

execute as @a[team=pr.spectator] unless score @s pr.plot = #spawn_plot pr.value run function pr:player/spawn_plot

execute as @a unless score @s pr.plot = @s pr.plot_previous if score @s pr.plot = #spawn_plot pr.value at @s run function pr:player/plot/move

execute as @a if score @s pr.plot = #spawn_plot pr.value run scoreboard players set @s pr.time 0
execute as @a[team=pr.player] unless score @s pr.plot = #spawn_plot pr.value run function pr:player/time/tick
scoreboard players operation #previous_time pr.value = #time pr.value
scoreboard players set @a[team=pr.spectator] pr.time 0

effect give @a saturation infinite 0 true

execute as @a[scores={pr.stop_launch_sound=1..}] run stopsound @a[distance=..32] block minecraft:entity.generic.explode
scoreboard players remove @a[scores={pr.stop_launch_sound=1..}] pr.stop_launch_sound 1
scoreboard players remove @a[scores={pr.checkpoint_cooldown=1..}] pr.checkpoint_cooldown 1

tag @a remove pr.spectator
tag @a[team=pr.spectator] add pr.spectator
tag @a remove pr.leaderboard_placement

execute as @a[scores={pr.title_cooldown=1..}] run scoreboard players remove @s pr.title_cooldown 1







# Tick plots

function pr:plot/main







# Make paintings and item frames invulnerable

execute positioned 0 0 0 as @e[type=#pr:family/hangable,distance=..1000,tag=!pr.invulnerable] run function pr:generic/invulnerable

# Kill checkpoint items

execute as @e[type=item,tag=!pr.item_processed] run function pr:generic/process_item







# Octopus pit

execute positioned -16 -8 16 run tp @a[team=pr.player,dx=15,dy=2,dz=47] -19 1 40 -90 0







# Tick door

execute if score #door_timer pr.value matches 1.. run function pr:door/tick







# Send tips

scoreboard players add #tip_timer pr.value 1
execute if score #tip_timer pr.value matches 2400.. run function pr:tip







# Compute MSPT

function pr:time/get

scoreboard players operation #mspt pr.value = #time pr.value
scoreboard players operation #mspt pr.value -= #time_start pr.value
execute if score #mspt pr.value matches ..20 run title @a[tag=mspt] actionbar [{"text":"MSPT: "},{"score":{"name":"#mspt","objective":"pr.value"},"color":"green"}]
execute if score #mspt pr.value matches 21..40 run title @a[tag=mspt] actionbar [{"text":"MSPT: "},{"score":{"name":"#mspt","objective":"pr.value"},"color":"yellow"}]
execute if score #mspt pr.value matches 41..50 run title @a[tag=mspt] actionbar [{"text":"MSPT: "},{"score":{"name":"#mspt","objective":"pr.value"},"color":"gold"}]
execute if score #mspt pr.value matches 51.. run title @a[tag=mspt] actionbar [{"text":"MSPT: "},{"score":{"name":"#mspt","objective":"pr.value"},"color":"red"}]