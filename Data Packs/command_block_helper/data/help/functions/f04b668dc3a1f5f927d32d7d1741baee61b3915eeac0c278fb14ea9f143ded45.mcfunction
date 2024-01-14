data modify storage help:data safe_nbt_interpret set value {}

data modify storage help:data safe_nbt_interpret.v0 set value "null"
data modify storage help:data safe_nbt_interpret.v0 set from storage pr:data tag.leaderboard_name
execute if data storage help:data {safe_nbt_interpret:{v0:"null"}} run data modify storage help:data safe_nbt_interpret.v0 set value '{"type":"text","text":""}'
execute if data storage help:data {safe_nbt_interpret:{v0:[]}} run data modify storage help:data safe_nbt_interpret.v0 set value '{"type":"text","text":""}'
execute if data storage help:data {safe_nbt_interpret:{v0:"[]"}} run data modify storage help:data safe_nbt_interpret.v0 set value '{"type":"text","text":""}'

data modify storage help:data safe_nbt_interpret.v1 set value "null"
data modify storage help:data safe_nbt_interpret.v1 set from storage pr:data tag.leaderboard_line_1
execute if data storage help:data {safe_nbt_interpret:{v1:"null"}} run data modify storage help:data safe_nbt_interpret.v1 set value '{"type":"text","text":""}'
execute if data storage help:data {safe_nbt_interpret:{v1:[]}} run data modify storage help:data safe_nbt_interpret.v1 set value '{"type":"text","text":""}'
execute if data storage help:data {safe_nbt_interpret:{v1:"[]"}} run data modify storage help:data safe_nbt_interpret.v1 set value '{"type":"text","text":""}'

data modify storage help:data safe_nbt_interpret.v2 set value "null"
data modify storage help:data safe_nbt_interpret.v2 set from storage pr:data tag.leaderboard_line_2
execute if data storage help:data {safe_nbt_interpret:{v2:"null"}} run data modify storage help:data safe_nbt_interpret.v2 set value '{"type":"text","text":""}'
execute if data storage help:data {safe_nbt_interpret:{v2:[]}} run data modify storage help:data safe_nbt_interpret.v2 set value '{"type":"text","text":""}'
execute if data storage help:data {safe_nbt_interpret:{v2:"[]"}} run data modify storage help:data safe_nbt_interpret.v2 set value '{"type":"text","text":""}'

data modify storage help:data safe_nbt_interpret.v3 set value "null"
data modify storage help:data safe_nbt_interpret.v3 set from storage pr:data tag.leaderboard_line_3
execute if data storage help:data {safe_nbt_interpret:{v3:"null"}} run data modify storage help:data safe_nbt_interpret.v3 set value '{"type":"text","text":""}'
execute if data storage help:data {safe_nbt_interpret:{v3:[]}} run data modify storage help:data safe_nbt_interpret.v3 set value '{"type":"text","text":""}'
execute if data storage help:data {safe_nbt_interpret:{v3:"[]"}} run data modify storage help:data safe_nbt_interpret.v3 set value '{"type":"text","text":""}'

data modify storage help:data safe_nbt_interpret.v4 set value "null"
data modify storage help:data safe_nbt_interpret.v4 set from storage pr:data tag.leaderboard_line_4
execute if data storage help:data {safe_nbt_interpret:{v4:"null"}} run data modify storage help:data safe_nbt_interpret.v4 set value '{"type":"text","text":""}'
execute if data storage help:data {safe_nbt_interpret:{v4:[]}} run data modify storage help:data safe_nbt_interpret.v4 set value '{"type":"text","text":""}'
execute if data storage help:data {safe_nbt_interpret:{v4:"[]"}} run data modify storage help:data safe_nbt_interpret.v4 set value '{"type":"text","text":""}'

data modify storage help:data safe_nbt_interpret.v5 set value "null"
data modify storage help:data safe_nbt_interpret.v5 set from storage pr:data tag.leaderboard_line_5
execute if data storage help:data {safe_nbt_interpret:{v5:"null"}} run data modify storage help:data safe_nbt_interpret.v5 set value '{"type":"text","text":""}'
execute if data storage help:data {safe_nbt_interpret:{v5:[]}} run data modify storage help:data safe_nbt_interpret.v5 set value '{"type":"text","text":""}'
execute if data storage help:data {safe_nbt_interpret:{v5:"[]"}} run data modify storage help:data safe_nbt_interpret.v5 set value '{"type":"text","text":""}'

return run data modify entity @s text set value '["",{"nbt":"safe_nbt_interpret.v0","storage":"help:data","interpret":true,"color":"gold","bold":true,"source":"storage","type":"nbt"},{"text":"\\n","type":"text"},{"nbt":"safe_nbt_interpret.v1","storage":"help:data","interpret":true,"source":"storage","type":"nbt"},{"text":"\\n","type":"text"},{"nbt":"safe_nbt_interpret.v2","storage":"help:data","interpret":true,"source":"storage","type":"nbt"},{"text":"\\n","type":"text"},{"nbt":"safe_nbt_interpret.v3","storage":"help:data","interpret":true,"source":"storage","type":"nbt"},{"text":"\\n","type":"text"},{"nbt":"safe_nbt_interpret.v4","storage":"help:data","interpret":true,"source":"storage","type":"nbt"},{"text":"\\n","type":"text"},{"nbt":"safe_nbt_interpret.v5","storage":"help:data","interpret":true,"source":"storage","type":"nbt"}]'