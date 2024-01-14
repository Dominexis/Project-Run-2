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

return run title @s[scores={dtplayers.oxygen=0..14,dtplayers.oxygen_lose=4..6}] actionbar [{"nbt":"safe_nbt_interpret.v0","storage":"help:data","interpret":true,"source":"storage","type":"nbt"},{"text":":","color":"gray","type":"text"},{"nbt":"safe_nbt_interpret.v1","storage":"help:data","interpret":true,"source":"storage","type":"nbt"},{"text":".","color":"gray","type":"text"},{"nbt":"safe_nbt_interpret.v2","storage":"help:data","interpret":true,"source":"storage","type":"nbt"},{"text":"  ●  ","color":"gray","type":"text"},{"score":{"name":"@s","objective":"dtplayers.oxygen"},"color":"red","bold":true,"type":"score"},{"text":" O₂   ","color":"red","bold":false,"type":"text"}]