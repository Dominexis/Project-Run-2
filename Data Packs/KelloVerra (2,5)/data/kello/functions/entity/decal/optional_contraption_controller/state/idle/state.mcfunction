# Activate when the shaft activated matches the amount of shaft activation requirements

execute if score @s kello.decal.shafts_activated matches 1.. run function kello:entity/decal/optional_contraption_controller/state/run/start



# 

execute if score @s kello.entity.checkpoint.id = @s kello.entity.checkpoint.id unless entity @s[tag=kello.checkpoint.active] run function kello:entity/decal/optional_contraption_controller/state/out/start