data merge storage kello:value {tag:{aimdicator_entity:{transformation:{scale:[0.0f,0.0f,0.0f]}}}}


scoreboard players operation #math kello.aim.scale = @s kello.aim.scale
scoreboard players operation #math kello.aim.scale *= #4 kello.value
scoreboard players operation #math kello.aim.scale /= #2 kello.value
execute store result storage kello:value tag.aimdicator_entity.transformation.scale[0] float 0.01 run scoreboard players get #math kello.aim.scale

data modify storage kello:value tag.aimdicator_entity.transformation.scale[1] set from storage kello:value tag.aimdicator_entity.transformation.scale[0]
data modify storage kello:value tag.aimdicator_entity.transformation.scale[2] set from storage kello:value tag.aimdicator_entity.transformation.scale[0]

data modify entity @s transformation.scale set from storage kello:value tag.aimdicator_entity.transformation.scale

data merge entity @s {start_interpolation:0,interpolation_duration:6}
return 1