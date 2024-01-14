# Init
scoreboard players operation @s kello.level.next_id = #level_id_to_assign kello.value
scoreboard players operation @s kello.level.next_var = #level_variant_to_load kello.value
scoreboard players set #duplicate_boolean kello.value 0
data merge storage kello:data {tag:{loaded_level:{refreshed_list:[]}}}
data modify storage kello:data tag.loaded_level.loop set from storage kello:data tag.loaded_level.list

function kello:tick/level/assign/loop


# Duplication check

execute if score #duplicate_boolean kello.value matches 0 run function kello:tick/level/assign/new
execute if score #duplicate_boolean kello.value matches 1 run function kello:tick/level/assign/duplicate
return 1