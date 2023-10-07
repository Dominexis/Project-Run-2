#> DEBUG

scoreboard players enable @s kello.decal.gimbal_to_selection_facing
scoreboard players enable @s kello.decal.pos_to_selection_facing
scoreboard players enable @s kello.decal.visualize_selected_decal_id
scoreboard players enable @s kello.update_rig_pos

execute if score @s kello.decal.gimbal_to_selection_facing matches 1.. run function kello:debug/decal/util/trigger/gimbal_selection_face
execute if score @s kello.decal.pos_to_selection_facing matches 1.. run function kello:debug/decal/util/trigger/pos_selection_face
execute if score @s kello.decal.visualize_selected_decal_id matches 1.. run function kello:debug/decal/util/trigger/visualize_selected_decal_id
execute if score @s kello.update_rig_pos matches 1.. run function kello:debug/decal/util/trigger/update_rig_pos


# Check Thread

execute if score #player_check_thread_2_sec kello.value matches ..0 run function kello:player/tick/check_thread/2
execute if score #player_check_thread_4_sec kello.value matches ..0 run function kello:player/tick/check_thread/4
execute if score #player_check_thread_8_sec kello.value matches ..0 run function kello:player/tick/check_thread/8
execute if score #player_check_thread_20_sec kello.value matches ..0 run function kello:player/tick/check_thread/20




# Teleport interaction infront of players

execute as @e[type=interaction,tag=kello.entity.interactable] if score @s kello.player.id = #local kello.player.id positioned ~ ~-5.125 ~ run tp @s ^ ^ ^1.125



# Title sequence

function kello:player/tick/title/verify





# Crosshair



execute unless score @s kello.player.title_state matches 0..6 unless entity @s[tag=kello.player.hide_crosshair] run function kello:player/tick/crosshair/tick




# Raycast NOTE:DEPRECATED

#scoreboard players set #castsearch kello.value 34
#scoreboard players set #casterminate kello.value 0
#execute anchored eyes run function kello:player/tick/raycast/search




# Combo Timer and Logic

function kello:player/combo/verify





# Music

scoreboard players enable @s apparatus_restart_music
execute if score @s apparatus_restart_music matches 1.. run function kello:player/tick/music/restart/verify
function kello:player/tick/music/main





# Barrier Riser

execute if entity @s[tag=!kello.riding] if block ~ ~ ~ barrier align y run tp @s ~ ~1 ~
execute if entity @s[tag=!kello.riding] if block ~ ~1 ~ barrier align y run tp @s ~ ~1 ~




# Riding logic and Flee 

execute if entity @s[tag=kello.riding] run function kello:player/ride/check
execute if entity @s[tag=kello.player.flee_revertable] run function kello:player/flee/check



# Left click sound cancelation (Not always 100% works
# copy pasted from the explosion sound canceling inside player launch in the core)

execute if score @s kello.sound.stop_att matches 1.. run function kello:generic/sfx/disable_att





# Cogwheel response timer and logic

function kello:player/cog/check





# Actionbar

function kello:player/tick/actionbar/main




# Void logic

execute if entity @s[gamemode=adventure] run function kello:player/tick/void/main

#execute if score @s kello.player.sneak_time matches 1.. if score @s kello.player.sneak matches 0 run function kello:player/tick/sneak/fail
#execute if score @s kello.player.sneak matches 1.. run function kello:player/tick/sneak/main



# Cog offhand switching detection

execute if entity @s[tag=!kello.debug.no_interaction] run function kello:player/cog/flip/verify