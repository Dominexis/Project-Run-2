# Verify

execute if entity @s[tag=kello.entity.type.decal_contraption_controller] run function kello:entity/decal/contraption_controller/main
execute if entity @s[tag=kello.entity.type.decal_parkour_controller] run function kello:entity/decal/parkour_controller/main
execute if entity @s[tag=kello.entity.type.decal_loading_controller] run function kello:entity/decal/loading_controller/main
#execute if entity @s[tag=kello.entity.type.cogwheel_shaft,tag=kello.entity.type.large] run function kello:entity/decal/decwheel/generic/large_shaft/main
#execute if entity @s[tag=kello.entity.type.cogwheel_shaft,tag=kello.entity.type.small] run function kello:entity/decal/decwheel/generic/small_shaft/main
execute if entity @s[tag=kello.entity.type.escapement] run function kello:entity/decal/component/escapement/main
execute if entity @s[tag=kello.entity.type.launchpad] run function kello:entity/decal/component/launchpad/state/main
execute if entity @s[tag=kello.entity.type.falling_platform] run function kello:entity/decal/component/falling_platform/main
execute if entity @s[tag=kello.entity.type.moving_platform] run function kello:entity/decal/component/moving_platform/main
execute if entity @s[tag=kello.entity.type.forward_platform] run function kello:entity/decal/component/forward_platform/main

execute if entity @s[tag=kello.entity.type.attach_burst] run function kello:entity/decal/attach_burst/main
execute if entity @s[tag=kello.entity.type.meteor_pillar] run function kello:entity/decal/meteor_pillar/main