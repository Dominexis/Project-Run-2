# Detect if time passed the tick time limit

function pr:time/get
execute if score #time pr.value > #entity_tick_time_limit kello.value run scoreboard players set #skip_tick_boolean kello.value 1




# AJ

execute if entity @s[type=item_display,tag=aj.rig_root] run function kello:tick/aj/root







# aj.terminate will terminate any entity (as long its an aj rig) while this 
# function still reference the entity therefore it will continue running its own 
# function as if it were alive which is horrifying enough imo and here we exclude it.
execute if score #skip_tick_boolean kello.value matches 0 unless entity @s[tag=aj.terminate] run function kello:tick/entity/main