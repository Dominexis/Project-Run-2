# Prepare entries
data merge storage kello:data {tag:{loaded_level:{refreshed_list:[]}}}

data modify storage kello:data tag.loaded_level.loop set from storage kello:data tag.loaded_level.list
function kello:tick/level/refresh/loop