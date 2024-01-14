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

return run title @s actionbar [{"nbt":"safe_nbt_interpret.v0","storage":"help:data","interpret":true,"source":"storage","type":"nbt"},{"text":":","color":"gray","type":"text"},{"nbt":"safe_nbt_interpret.v1","storage":"help:data","interpret":true,"source":"storage","type":"nbt"},{"text":"   ","type":"text"},{"text":"O²","bold":true,"color":"green","type":"text"},{"text":": ","color":"green","type":"text"},{"score":{"name":"#tmp.o2.sec","objective":"funkytoc.moon.var"},"color":"green","type":"score"}]