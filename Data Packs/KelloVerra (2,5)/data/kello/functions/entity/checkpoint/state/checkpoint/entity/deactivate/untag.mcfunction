# execute if entity @s[tag=kello.entity.type.decal_parkour_controller] run function kello:entity/decal/parkour_controller/state/out/start
# execute if entity @s[tag=kello.entity.type.decal_contraption_controller] run function kello:entity/decal/contraption_controller/state/out/start
# execute if entity @s[tag=kello.entity.type.decal_optional_contraption_controller] run function kello:entity/decal/contraption_controller/state_optional/out/start
# tag @s remove kello.checkpoint.active
tag @s remove kello.checkpoint.is_loaded
return 1