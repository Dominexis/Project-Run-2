data modify storage help:data safe_nbt_interpret set value {}

data modify storage help:data safe_nbt_interpret.v0 set value "null"
data modify storage help:data safe_nbt_interpret.v0 set from storage inquognito:data hud_timer
execute if data storage help:data {safe_nbt_interpret:{v0:"null"}} run data modify storage help:data safe_nbt_interpret.v0 set value '{"type":"text","text":""}'
execute if data storage help:data {safe_nbt_interpret:{v0:[]}} run data modify storage help:data safe_nbt_interpret.v0 set value '{"type":"text","text":""}'
execute if data storage help:data {safe_nbt_interpret:{v0:"[]"}} run data modify storage help:data safe_nbt_interpret.v0 set value '{"type":"text","text":""}'

data modify storage help:data safe_nbt_interpret.v1 set value "null"
data modify storage help:data safe_nbt_interpret.v1 set from storage inquognito:data hud_energy_label
execute if data storage help:data {safe_nbt_interpret:{v1:"null"}} run data modify storage help:data safe_nbt_interpret.v1 set value '{"type":"text","text":""}'
execute if data storage help:data {safe_nbt_interpret:{v1:[]}} run data modify storage help:data safe_nbt_interpret.v1 set value '{"type":"text","text":""}'
execute if data storage help:data {safe_nbt_interpret:{v1:"[]"}} run data modify storage help:data safe_nbt_interpret.v1 set value '{"type":"text","text":""}'

data modify storage help:data safe_nbt_interpret.v2 set value "null"
data modify storage help:data safe_nbt_interpret.v2 set from storage inquognito:data hud_energy_value
execute if data storage help:data {safe_nbt_interpret:{v2:"null"}} run data modify storage help:data safe_nbt_interpret.v2 set value '{"type":"text","text":""}'
execute if data storage help:data {safe_nbt_interpret:{v2:[]}} run data modify storage help:data safe_nbt_interpret.v2 set value '{"type":"text","text":""}'
execute if data storage help:data {safe_nbt_interpret:{v2:"[]"}} run data modify storage help:data safe_nbt_interpret.v2 set value '{"type":"text","text":""}'

data modify storage help:data safe_nbt_interpret.v3 set value "null"
data modify storage help:data safe_nbt_interpret.v3 set from storage inquognito:data hud_energy_blockage
execute if data storage help:data {safe_nbt_interpret:{v3:"null"}} run data modify storage help:data safe_nbt_interpret.v3 set value '{"type":"text","text":""}'
execute if data storage help:data {safe_nbt_interpret:{v3:[]}} run data modify storage help:data safe_nbt_interpret.v3 set value '{"type":"text","text":""}'
execute if data storage help:data {safe_nbt_interpret:{v3:"[]"}} run data modify storage help:data safe_nbt_interpret.v3 set value '{"type":"text","text":""}'

return run title @s actionbar [{"nbt":"safe_nbt_interpret.v0","storage":"help:data","interpret":true,"source":"storage","type":"nbt"},{"nbt":"safe_nbt_interpret.v1","storage":"help:data","interpret":true,"source":"storage","type":"nbt"},{"nbt":"safe_nbt_interpret.v2","storage":"help:data","interpret":true,"source":"storage","type":"nbt"},{"nbt":"safe_nbt_interpret.v3","storage":"help:data","interpret":true,"source":"storage","type":"nbt"}]