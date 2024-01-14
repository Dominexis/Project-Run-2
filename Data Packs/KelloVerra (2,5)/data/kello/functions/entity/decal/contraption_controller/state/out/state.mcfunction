# Activate when the shaft activated matches the amount of shaft activation requirements

execute if score @s kello.entity.checkpoint.id = @s kello.entity.checkpoint.id if entity @s[tag=kello.checkpoint.is_loaded] run function kello:entity/decal/contraption_controller/state/idle/start
return 1