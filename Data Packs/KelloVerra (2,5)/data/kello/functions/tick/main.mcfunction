# Internal processes

function kello:tick/process






# Define entity ticking time limit

function pr:time/get
scoreboard players operation #entity_tick_time_limit kello.value = #entity_tick_time_maximum kello.value
scoreboard players operation #entity_tick_time_limit kello.value -= player_tick_time kello.value
scoreboard players operation #entity_tick_time_limit kello.value > #entity_tick_time_minimum kello.value
scoreboard players operation #entity_tick_time_limit kello.value += #time pr.value
scoreboard players operation #prev_tick_time kello.value = #time pr.value
scoreboard players add #global kello.ticks 1







# Loop entity

scoreboard players set #skip_tick_boolean kello.value 0
execute as @e[type=#kello:generic/system,tag=pr.target,tag=!pr.ignore,tag=!kello.exclude] run function kello:tick/entity/verify





# Set entity ticking time and previous tick time

function pr:time/get
scoreboard players operation entity_tick_time kello.value = #time pr.value
scoreboard players operation entity_tick_time kello.value -= #prev_tick_time kello.value
scoreboard players operation #prev_tick_time kello.value = #time pr.value






# Loop player

execute as @a[tag=pr.target] if score @s kello.player.id = @s kello.player.id run function kello:player/tick/verify
execute if score #player_check_thread_2_sec kello.value matches ..0 run scoreboard players set #player_check_thread_2_sec kello.value 40
execute if score #player_check_thread_4_sec kello.value matches ..0 run scoreboard players set #player_check_thread_4_sec kello.value 80
execute if score #player_check_thread_8_sec kello.value matches ..0 run scoreboard players set #player_check_thread_8_sec kello.value 160
execute if score #player_check_thread_20_sec kello.value matches ..0 run scoreboard players set #player_check_thread_20_sec kello.value 400





# Set player ticking time

function pr:time/get
scoreboard players operation player_tick_time kello.value = #time pr.value
scoreboard players operation player_tick_time kello.value -= #prev_tick_time kello.value
scoreboard players operation #prev_tick_time kello.value = #time pr.value



# Decal generation

execute if score #generator.generate kello.value matches 1 run function kello:debug/decal/gen/verify