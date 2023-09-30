# Init

scoreboard players operation #generator.iter kello.value = #generator.overflow_max_iter kello.value
scoreboard players set #generator.initial_tick_stamp kello.value 0
scoreboard players set #generator.current_tick_stamp kello.value 0
scoreboard players set #generator.tick_total kello.value 0


# Initial time assignment (dont know if useful)

function pr:time/get
scoreboard players operation #generator.initial_tick_stamp kello.value = #time pr.value
scoreboard players operation #previous_tick kello.value = #time pr.value



# Start iteration

execute as @e[type=marker,tag=kello.decal.temp_spawn_point] if score @s kello.level.id = #generator.local_level_id kello.value at @s run function kello:debug/decal/gen/iter





# Detect any leftover entities to continue iteration on the next tick update

scoreboard players set #generator.leftover_entities kello.value 0
execute as @e[type=marker,tag=kello.decal.temp_spawn_point] if score @s kello.level.id = #generator.local_level_id kello.value run function kello:debug/decal/gen/count_entities
execute if score #generator.leftover_entities kello.value matches 0 run function kello:debug/decal/gen/next_instance





#! total ticks = {score #generator.tick_total kello.value}
#! leftover entities = {score #generator.leftover_entities kello.value}