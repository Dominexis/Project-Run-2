# Air toggle timer
# TODO: DEPRECATE - REMOVE ON PACKAGE

#scoreboard players add #air_toggle_timer kello.value 1
#execute if score #air_toggle_timer kello.value matches 50.. run scoreboard players set #air_toggle_timer kello.value 0



execute if score #queue_new_player_event kello.value matches 1 run function kello:setup/new_player_event

scoreboard players remove #player_check_thread_2_sec kello.value 1
scoreboard players remove #player_check_thread_4_sec kello.value 1
scoreboard players remove #player_check_thread_8_sec kello.value 1
scoreboard players remove #player_check_thread_20_sec kello.value 1



## DEBUG

execute unless score #player_check_thread_2_sec kello.value matches 21..38 unless score #player_check_thread_2_sec kello.value matches 0..19 run function kello:tick/debug




# Util entity
# TODO: TEMPORARY - REMOVE ON PACKAGE 

execute as @e[type=#kello:generic/debug,tag=kello.entity.util] at @s run function kello:debug/decal/util/main