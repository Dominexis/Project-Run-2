execute if score #queue_new_player_event kello.value matches 1 run function kello:setup/new_player_event

scoreboard players remove #player_check_thread_2_sec kello.value 1
scoreboard players remove #player_check_thread_4_sec kello.value 1
scoreboard players remove #player_check_thread_8_sec kello.value 1
scoreboard players remove #player_check_thread_20_sec kello.value 1
return 1