data modify storage help:data safe_nbt_interpret set value {}

data modify storage help:data safe_nbt_interpret.v0 set value "null"
data modify storage help:data safe_nbt_interpret.v0 set from storage pr:data tag.minutes
execute if data storage help:data {safe_nbt_interpret:{v0:"null"}} run data modify storage help:data safe_nbt_interpret.v0 set value '{"type":"text","text":""}'
execute if data storage help:data {safe_nbt_interpret:{v0:[]}} run data modify storage help:data safe_nbt_interpret.v0 set value '{"type":"text","text":""}'
execute if data storage help:data {safe_nbt_interpret:{v0:"[]"}} run data modify storage help:data safe_nbt_interpret.v0 set value '{"type":"text","text":""}'

data modify storage help:data safe_nbt_interpret.v1 set value "null"
data modify storage help:data safe_nbt_interpret.v1 set from storage pr:data tag.seconds
execute if data storage help:data {safe_nbt_interpret:{v1:"null"}} run data modify storage help:data safe_nbt_interpret.v1 set value '{"type":"text","text":""}'
execute if data storage help:data {safe_nbt_interpret:{v1:[]}} run data modify storage help:data safe_nbt_interpret.v1 set value '{"type":"text","text":""}'
execute if data storage help:data {safe_nbt_interpret:{v1:"[]"}} run data modify storage help:data safe_nbt_interpret.v1 set value '{"type":"text","text":""}'

data modify storage help:data safe_nbt_interpret.v2 set value "null"
data modify storage help:data safe_nbt_interpret.v2 set from storage pr:data tag.milliseconds
execute if data storage help:data {safe_nbt_interpret:{v2:"null"}} run data modify storage help:data safe_nbt_interpret.v2 set value '{"type":"text","text":""}'
execute if data storage help:data {safe_nbt_interpret:{v2:[]}} run data modify storage help:data safe_nbt_interpret.v2 set value '{"type":"text","text":""}'
execute if data storage help:data {safe_nbt_interpret:{v2:"[]"}} run data modify storage help:data safe_nbt_interpret.v2 set value '{"type":"text","text":""}'

return run title @s actionbar [{"text":"\ue004\ue003\ue003\ue001\ue001\ue000","font":"kello:space","obfuscated":false,"type":"text"},{"text":"\ue001","font":"kello:keybind/shift","obfuscated":true,"type":"text"},{"text":" Flee","font":"minecraft:default","obfuscated":false,"type":"text"},{"text":"\ue004\ue002\ue001\ue001\ue000","font":"kello:space","obfuscated":false,"type":"text"},{"nbt":"safe_nbt_interpret.v0","storage":"help:data","interpret":true,"font":"kello:lower","obfuscated":false,"source":"storage","type":"nbt"},{"text":":","color":"gray","font":"kello:lower","obfuscated":false,"type":"text"},{"nbt":"safe_nbt_interpret.v1","storage":"help:data","interpret":true,"font":"kello:lower","obfuscated":false,"source":"storage","type":"nbt"},{"text":".","color":"gray","font":"kello:lower","obfuscated":false,"type":"text"},{"nbt":"safe_nbt_interpret.v2","storage":"help:data","interpret":true,"font":"kello:lower","obfuscated":false,"source":"storage","type":"nbt"}]