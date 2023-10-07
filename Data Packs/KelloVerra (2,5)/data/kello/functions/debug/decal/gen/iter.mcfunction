# Operation condition

execute unless score #generator.iter kello.value matches 1.. run scoreboard players set #generator.skip_iteration_cycle kello.value 1
execute if score #generator.tick_total kello.value > #generator.max_tick_time kello.value run scoreboard players set #generator.skip_iteration_cycle kello.value 1

scoreboard players remove #generator.iter kello.value 1





# Iteration


# execute summon item_display run data merge entity @s {Tags:["kello.hahalolol"],Rotation:[20.0f,20.0f]}
# execute as @e[type=item_display,tag=kello.hahalolol] run function kello:debug/decal/util/spawn/verify/decals/process_decals

scoreboard players operation #local kello.level.id = @s kello.level.id
scoreboard players set #level_creation_mode kello.value 1

function kello:debug/decal/util/spawn/verify/decals/process_decals

scoreboard players set #level_creation_mode kello.value 0




# Time calculation

function pr:time/get

scoreboard players operation #generator.current_tick_stamp kello.value = #time pr.value
scoreboard players operation #tick_increment kello.value = #time pr.value
scoreboard players operation #tick_increment kello.value -= #previous_tick kello.value
scoreboard players operation #previous_tick kello.value = #time pr.value

scoreboard players operation #generator.tick_total kello.value += #tick_increment kello.value




kill @s