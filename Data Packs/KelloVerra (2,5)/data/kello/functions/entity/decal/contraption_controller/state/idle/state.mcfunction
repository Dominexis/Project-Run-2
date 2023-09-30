# Activate when the shaft activated matches the amount of shaft activation requirements

execute if score @s kello.decal.shafts_activated >= @s kello.decal.shafts run function kello:entity/decal/contraption_controller/state/run/start



# 

execute if score @s kello.entity.checkpoint.id = @s kello.entity.checkpoint.id unless entity @s[tag=kello.checkpoint.active] run function kello:entity/decal/contraption_controller/state/out/start