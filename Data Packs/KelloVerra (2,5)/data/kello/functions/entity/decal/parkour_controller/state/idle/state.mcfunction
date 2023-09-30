# Activate when the shaft activated matches the amount of shaft activation requirements



# 
execute if score @s kello.entity.checkpoint.id = @s kello.entity.checkpoint.id unless entity @s[tag=kello.checkpoint.active] run function kello:entity/decal/parkour_controller/state/out/start