# data merge entity @s {Tags:["kello.entity.type.launchpad","kello.decal.temp_spawn_point"],Rotation:[0.0f,-90.0f]}
data merge entity @s {Tags:["kello.entity.type.launchpad","kello.decal.temp_spawn_point"]}

scoreboard players operation @s kello.entity.launch_power = #launch_power kello.value

data merge storage kello:data {tag:{Rotation:[0.0f,0.0f]}}
execute store result storage kello:data tag.Rotation[0] float 0.1 run scoreboard players get #rot_x kello.value
execute store result storage kello:data tag.Rotation[1] float 0.1 run scoreboard players get #rot_y kello.value
data modify entity @s Rotation set from storage kello:data tag.Rotation