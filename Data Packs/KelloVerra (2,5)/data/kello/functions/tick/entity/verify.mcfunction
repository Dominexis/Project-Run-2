# Add tag

tag @s add kello.entity.activated



# Detect if time passed the tick time limit

function pr:time/get
execute if score #time pr.value > #entity_tick_time_limit kello.value run function kello:tick/entity/skip_tick
# tellraw @a {"score":{"objective":"pr.value","name":"#time"}}





# AJ

execute if score #skip_current_boolean kello.value matches 0 if entity @s[type=item_display,tag=aj.rig_root] positioned as @s run function kello:tick/aj/root







# aj.terminate will terminate any entity (as long its an aj rig) while this 
# function still reference the entity therefore it will continue running its own 
# function as if it were alive which is horrifying enough imo and here we exclude it.
execute if score #skip_current_boolean kello.value matches 0 if score #skip_current_boolean kello.value matches 0 unless entity @s[tag=aj.terminate] run function kello:tick/entity/main