# Get to the next entry

execute store result score #level_id kello.value run data get storage kello:data tag.loaded_level.loop[0]



# Check for playercounts

execute unless score #force_load kello.value matches 1 if score #level_id kello.value = #level_id_to_assign kello.value run scoreboard players set #duplicate_boolean kello.value 1
data remove storage kello:data tag.loaded_level.loop[0]




# Continue?

execute if data storage kello:data tag.loaded_level.loop[0] run function kello:tick/level/assign/loop