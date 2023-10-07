#! NEW ASSIGNED LEVEL ID {score #level_id_to_assign kello.value}

execute store result storage kello:data tag.loaded_level.id int 1 run scoreboard players get #level_id_to_assign kello.value
data modify storage kello:data tag.loaded_level.list append from storage kello:data tag.loaded_level.id


## NOTE: EXPERIMENTAL

scoreboard players operation #load_level_id kello.value = #level_id_to_assign kello.value
execute positioned as @e[type=marker,tag=kello.entity.plot_center,limit=1] align xyz run function kello:plot/levels/load/verify