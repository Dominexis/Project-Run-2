# Activate when the shaft activated matches the amount of shaft activation requirements

execute unless score #generator.local_level_id kello.value = @s kello.level.id run function kello:entity/decal/loading_controller/state/run/start


# 

# execute if score @s kello.entity.checkpoint.id = @s kello.entity.checkpoint.id unless entity @s[tag=kello.checkpoint.active] run function kello:entity/decal/loading_controller/state/out/start