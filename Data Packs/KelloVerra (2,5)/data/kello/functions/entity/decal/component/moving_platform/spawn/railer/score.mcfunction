data merge entity @s {Tags:["kello.entity","kello.decal","kello.entity.type.moving_platform","kello.entity.ticking","kello.decal.component","kello.decal.point"],translation:[-0.5f,-0.5f,-0.5f],left_rotation:[0f,0f,0f,1f],scale:[2f,2f,2f],right_rotation:[0f,0f,0f,1f]}


scoreboard players operation @s kello.decal.delay = #moving_platform_impact_delay kello.value

scoreboard players add #global kello.entity.id 1
scoreboard players operation @s kello.decal.id = #selected kello.decal.id
scoreboard players operation @s kello.entity.id = #global kello.entity.id

execute if score #level_creation_mode kello.value matches 1 run scoreboard players operation @s kello.level.id = #local kello.level.id
# execute if score #ref_state kello.value matches 1 run scoreboard players operation @s kello.decal.state = #local kello.decal.state

function kello:entity/decal/component/initialize/main