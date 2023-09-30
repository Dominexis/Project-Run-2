data merge storage kello:value {tag:{aimdicator_entity:{transformation:{scale:[0f,0f,0f]}}}}

execute store result storage kello:value tag.aimdicator_entity.transformation.scale[0] float 0.01 run scoreboard players get @s kello.aim.scale

data modify storage kello:value tag.aimdicator_entity.transformation.scale[1] set from storage kello:value tag.aimdicator_entity.transformation.scale[0]
data modify storage kello:value tag.aimdicator_entity.transformation.scale[2] set from storage kello:value tag.aimdicator_entity.transformation.scale[0]

data modify entity @s transformation.scale set from storage kello:value tag.aimdicator_entity.transformation.scale

data merge entity @s {transformation:{left_rotation:{axis:[0.0f,0.0f,1.0f],angle:0.0}},start_interpolation:0,interpolation_duration:4}