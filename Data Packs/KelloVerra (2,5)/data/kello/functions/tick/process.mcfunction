execute if score #queue_new_player_event kello.value matches 1 run function kello:setup/new_player_event

scoreboard players remove #player_check_thread_2_sec kello.value 1
scoreboard players remove #player_check_thread_4_sec kello.value 1
scoreboard players remove #player_check_thread_8_sec kello.value 1
scoreboard players remove #player_check_thread_20_sec kello.value 1




# Util entity
# TODO: IS TEMPORARY

execute as @e[type=#kello:generic/debug,tag=kello.entity.util] at @s run function kello:debug/decal/util/main