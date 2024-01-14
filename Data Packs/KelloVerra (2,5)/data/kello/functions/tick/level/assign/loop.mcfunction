# Get to the next entry

execute store result score #level_id kello.value run data get storage kello:data tag.loaded_level.loop[0].id
execute store result score #level_variant kello.value run data get storage kello:data tag.loaded_level.loop[0].variant



# Check for playercounts

scoreboard players set #level_id_is_same kello.value 0
scoreboard players set #level_var_is_same kello.value 0

execute if score #level_id kello.value = #level_id_to_assign kello.value run scoreboard players set #level_id_is_same kello.value 1
execute if score #level_variant kello.value = #level_variant_to_load kello.value run scoreboard players set #level_var_is_same kello.value 1
execute if score #level_id_is_same kello.value matches 1 if score #level_var_is_same kello.value matches 1 run scoreboard players set #duplicate_boolean kello.value 1

data remove storage kello:data tag.loaded_level.loop[0]




# Continue?

execute if data storage kello:data tag.loaded_level.loop[0] run function kello:tick/level/assign/loop
return 1