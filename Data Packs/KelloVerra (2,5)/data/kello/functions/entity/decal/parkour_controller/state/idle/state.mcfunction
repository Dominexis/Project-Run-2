# Activate when the shaft activated matches the amount of shaft activation requirements

execute unless entity @s[tag=kello.checkpoint.is_loaded] run function kello:entity/decal/parkour_controller/state/out/start
return 1