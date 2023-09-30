# Get to the next entry

execute store result score #level_id kello.value run data get storage kello:data tag.loaded_level.loop[0]



# Unload loaded levels

function kello:tick/level/refresh/unload
data remove storage kello:data tag.loaded_level.loop[0]




# Continue

execute if data storage kello:data tag.loaded_level.loop[0] run function kello:tick/level/refresh/loop