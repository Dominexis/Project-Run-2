data modify storage help:data safe_nbt_interpret set value {}

data modify storage help:data safe_nbt_interpret.v0 set value "null"
data modify storage help:data safe_nbt_interpret.v0 set from storage pr:data tag.leaderboard_name
execute if data storage help:data {safe_nbt_interpret:{v0:"null"}} run data modify storage help:data safe_nbt_interpret.v0 set value '{"type":"text","text":""}'
execute if data storage help:data {safe_nbt_interpret:{v0:[]}} run data modify storage help:data safe_nbt_interpret.v0 set value '{"type":"text","text":""}'
execute if data storage help:data {safe_nbt_interpret:{v0:"[]"}} run data modify storage help:data safe_nbt_interpret.v0 set value '{"type":"text","text":""}'

return run tellraw @s ["",{"text":"Congratulations! You got 2nd on the ","color":"gold","type":"text"},{"nbt":"safe_nbt_interpret.v0","storage":"help:data","interpret":true,"color":"gold","source":"storage","type":"nbt"},{"text":" Leaderboard!","color":"gold","type":"text"}]