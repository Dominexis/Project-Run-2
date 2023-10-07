# Branch to specific components

# execute if entity @s[tag=kello.entity.type.chain_platform                       ] run function kello:entity/decal/contraption_controller/state/inv/children/component/chain_platform/frames
execute if entity @s[tag=kello.entity.type.gate,tag=kello.entity.type.chapter_1 ] rotated as @s run function kello:entity/decal/contraption_controller/state/inv/children/component/gate/chapter_1/frames
execute if entity @s[tag=kello.entity.type.moving_platform                      ] run function kello:entity/decal/contraption_controller/state/inv/children/component/moving_platform/frames
execute if entity @s[tag=kello.decal.type.animwheel                             ] run function kello:entity/decal/contraption_controller/state/inv/children/component/animwheel/frames



# Extra

execute if entity @s[tag=kello.entity.type.falling_platform_spawner,tag=kello.entity.meteor_spawner_bloom ] run function kello:entity/decal/contraption_controller/state/inv/children/component/meteor_spawner