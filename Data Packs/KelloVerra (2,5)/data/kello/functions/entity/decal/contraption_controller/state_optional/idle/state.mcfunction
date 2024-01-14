# Activate when the shaft activated matches the amount of shaft activation requirements

execute if score @s kello.decal.shafts_activated matches 1.. run function kello:entity/decal/contraption_controller/state_optional/run/start



# 

execute unless score @s kello.entity.ignore_checkpoint matches 1 if score @s kello.entity.checkpoint.id = @s kello.entity.checkpoint.id unless entity @s[tag=kello.checkpoint.is_loaded] run function kello:entity/decal/contraption_controller/state_optional/out/start
return 1