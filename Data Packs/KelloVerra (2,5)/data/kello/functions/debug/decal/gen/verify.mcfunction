# Init

scoreboard players operation #generator.iter kello.value = #generator.overflow_max_iter kello.value
scoreboard players set #generator.initial_tick_stamp kello.value 0
scoreboard players set #generator.current_tick_stamp kello.value 0
scoreboard players set #generator.tick_total kello.value 0
scoreboard players set #generator.leftover_entities kello.value 0
execute if score #generator.skip_iteration_cycle kello.value matches 1.. run scoreboard players remove #generator.skip_iteration_cycle kello.value 1
execute if score #generator.skip_iteration_cycle kello.value matches 1.. run return 0


# Initial time assignment

function pr:time/get
scoreboard players operation #generator.initial_tick_stamp kello.value = #time pr.value
scoreboard players operation #previous_tick kello.value = #time pr.value



# Start iteration

execute as @e[type=marker,tag=kello.decal.temp_spawn_point,tag=!kello.decal.unregistered] if score @s kello.level.id = #generator.local_level_id kello.value run function kello:debug/decal/gen/execute





# Detect any leftover entities to continue iteration on the next tick update

# execute as @e[type=marker,tag=kello.decal.temp_spawn_point] if score @s kello.level.id = #generator.local_level_id kello.value run function kello:debug/decal/gen/count_entities
execute if score #generator.leftover_entities kello.value matches 0 run function kello:debug/decal/gen/next_instance



# Offset cycle if the current cycle is quite heavy

scoreboard players operation #generator.cycle_offset kello.value = #generator.tick_total kello.value
scoreboard players operation #generator.cycle_offset kello.value /= #2 kello.value
scoreboard players operation #generator.cycle_offset kello.value += #2 kello.value
scoreboard players operation #generator.skip_iteration_cycle kello.value += #generator.cycle_offset kello.value


