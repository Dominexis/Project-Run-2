# Summon entity(ies)

#summon area_effect_cloud ~ ~ ~ {Tags:[ "kello.entity","kello.entity.throwable","kello.entity.type.large","kello.entity.type.thrown_cogwheel","kello.entity.part.main",      "kello.entity.ticking","kello.entity.air_toggle","kello.entity.target.spawn" ],Age:-2147483648,Duration:-1,WaitTime:-2147483648,Passengers:[{id:"minecraft:item_display",interpolation_duration:0,interpolation_start:0,Tags:[ "kello.entity","kello.entity.throwable","kello.entity.type.large","kello.entity.type.thrown_cogwheel","kello.entity.part.cogwheel",      "kello.entity.target.spawn" ],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1.5f]},item:{id:"minecraft:magenta_stained_glass_pane",Count:1b,tag:{CustomModelData:351902}}}]}
summon marker ~ ~ ~ {Tags:[ "kello.entity","kello.decal","kello.entity.type.decal_optional_contraption_controller","kello.entity.type.decal_controller","kello.entity.part.main",      "kello.decal.controlled","kello.entity.ticking","kello.entity.target.spawn" ]}
function kello:entity/decal/optional_contraption_controller/spawn/mark


# Assign scores

execute as @e[type=marker,tag=!pr.ignore,distance=..0.5,tag=kello.entity.target.spawn] positioned as @s run function kello:entity/decal/optional_contraption_controller/spawn/score




# Notify

# tellraw @p [{"text":"> Spawned a optional contraption controller, using ID => ","color":"gray"},{"score":{"name":"#global","objective":"kello.decal.id"},"color":"white"}]





# Untarget self

tag @e[tag=kello.entity.target.spawn] remove kello.entity.target.spawn