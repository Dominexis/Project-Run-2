# Summon entity(ies)

#summon area_effect_cloud ~ ~ ~ {Tags:[ "kello.entity","kello.entity.throwable","kello.entity.type.large","kello.entity.type.thrown_cogwheel","kello.entity.part.main",      "kello.entity.ticking","kello.entity.air_toggle","kello.entity.target.spawn" ],Age:-2147483648,Duration:-1,WaitTime:-2147483648,Passengers:[{id:"minecraft:item_display",interpolation_duration:0,interpolation_start:0,Tags:[ "kello.entity","kello.entity.throwable","kello.entity.type.large","kello.entity.type.thrown_cogwheel","kello.entity.part.cogwheel",      "kello.entity.target.spawn" ],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1.5f]},item:{id:"minecraft:magenta_stained_glass_pane",Count:1b,tag:{CustomModelData:351902}}}]}
#summon marker ~ ~ ~ {Tags:[ "kello.entity","kello.decal","kello.entity.type.decal_parkour_controller","kello.entity.type.decal_controller","kello.entity.part.main",      "kello.decal.controlled","kello.entity.ticking","kello.entity.target.spawn" ]}
execute align xyz positioned ~.5 ~.75 ~.5 summon item_display run function kello:entity/decal/parkour_controller/spawn/init




# Notify

# tellraw @p [{"text":"> Spawned a parkour controller, using ID => ","color":"gray"},{"score":{"name":"#global","objective":"kello.decal.id"},"color":"white"}]