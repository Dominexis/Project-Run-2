# Scrap off any checkpoint referenced entity with no tag

scoreboard players set #skip_current_boolean kello.value 0
# execute unless entity @s[tag=kello.entity.type.checkpoint] if score @s kello.entity.checkpoint.id = @s kello.entity.checkpoint.id unless entity @s[tag=kello.checkpoint.active] run scoreboard players set #skip_current_boolean kello.value 1





# Detect if time passed the tick time limit

function pr:time/get
execute if score #time pr.value > #entity_tick_time_limit kello.value run scoreboard players set #skip_tick_boolean kello.value 1
# tellraw @a {"score":{"objective":"pr.value","name":"#time"}}




# AJ

execute if score #skip_current_boolean kello.value matches 0 if entity @s[type=item_display,tag=aj.rig_root] positioned as @s run function kello:tick/aj/root







# aj.terminate will terminate any entity (as long its an aj rig) while this 
# function still reference the entity therefore it will continue running its own 
# function as if it were alive which is horrifying enough imo and here we exclude it.
execute if score #skip_tick_boolean kello.value matches 0 if score #skip_current_boolean kello.value matches 0 unless entity @s[tag=aj.terminate] run function kello:tick/entity/main