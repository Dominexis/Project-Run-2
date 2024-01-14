# Branch to specific components

# Time based components
# execute if entity @s[tag=kello.entity.type.chain_platform                       ] run function kello:entity/decal/contraption_controller/state/run/children/component/chain_platform/frames
execute if entity @s[tag=kello.entity.type.gate,tag=kello.entity.type.chapter_1] rotated as @s run function kello:entity/decal/contraption_controller/state/run/children/component/gate/chapter_1/frames
execute if entity @s[tag=kello.entity.type.moving_platform] run function kello:entity/decal/contraption_controller/state/run/children/component/moving_platform/frames
execute if entity @s[tag=kello.decal.type.animwheel] run function kello:entity/decal/contraption_controller/state/run/children/component/animwheel/frames



# Instantiation components
execute if entity @s[tag=kello.entity.type.falling_platform_spawner] if score #local kello.entity.timer matches 19 run function kello:entity/decal/contraption_controller/state/run/children/component/falling_platform/verify
return 1