# Temp init

scoreboard players set #playercount kello.value 0




# Get to the next entry

execute store result score #level_id kello.value run data get storage kello:data tag.loaded_level.loop[0].id
execute store result score #level_variant kello.value run data get storage kello:data tag.loaded_level.loop[0].variant




# Check for playercounts

execute as @a[tag=pr.target] run function kello:tick/level/refresh/check

execute if score #playercount kello.value matches 1.. run data modify storage kello:data tag.loaded_level.refreshed_list append from storage kello:data tag.loaded_level.loop[0]
execute if score #playercount kello.value matches 0 run function kello:tick/level/refresh/unload
data remove storage kello:data tag.loaded_level.loop[0]




# Continue?

execute if data storage kello:data tag.loaded_level.loop[0] run function kello:tick/level/refresh/loop
execute unless data storage kello:data tag.loaded_level.loop[0] run function kello:tick/level/refresh/end
return 1