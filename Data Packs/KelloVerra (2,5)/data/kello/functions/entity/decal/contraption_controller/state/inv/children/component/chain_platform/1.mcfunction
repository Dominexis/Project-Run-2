# Place hitbox

execute if entity @s[tag=kello.entity.platform] run setblock ~ ~ ~ minecraft:barrier



# Dynamic hitbox deplacing

scoreboard players operation #local kello.component.to_y = @s kello.component.to_y
scoreboard players operation #local kello.component.to_y *= #1000 kello.value
execute store result score #math kello.component.to_y run data get entity @s Pos[1] 1000
scoreboard players operation #local kello.component.to_y += #math kello.component.to_y



# Visual

execute if entity @s[tag=kello.entity.part.platform_visual] run function kello:entity/decal/contraption_controller/state/inv/children/component/chain_platform/1_vis




# Push to nbt

data merge storage kello:value {tag:{component_entity:{transformation:{translation:[0.0f,0.0f,0.0f]}}}}
data modify entity @s transformation.translation set from storage kello:value tag.component_entity.transformation.translation
data merge entity @s {start_interpolation:0,interpolation_duration:8}

execute if entity @s[tag=kello.entity.platform] summon minecraft:marker run function kello:entity/decal/contraption_controller/state/inv/children/component/chain_platform/1_loc
return 1