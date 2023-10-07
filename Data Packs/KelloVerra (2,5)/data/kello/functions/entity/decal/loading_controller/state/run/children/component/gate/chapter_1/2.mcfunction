# Deplace hitbox

execute rotated as @s run fill ^1 ^ ^ ^-1 ^7 ^ air replace minecraft:petrified_oak_slab[type=top]




# # Dynamic hitbox placing

# scoreboard players operation #local kello.component.to_y = @s kello.component.to_y
# scoreboard players operation #local kello.component.to_y *= #1000 kello.value
# execute store result score #math kello.component.to_y run data get entity @s Pos[1] 1000
# scoreboard players operation #local kello.component.to_y += #math kello.component.to_y



# # Visual

# execute if entity @s[tag=kello.entity.part.platform_visual] run function kello:entity/decal/loading_controller/state/run/children/component/chain_platform/2_vis




# # Push score to nbt

# data merge storage kello:value {tag:{component_entity:{transformation:{translation:[0f,0f,0f]}}}}
# execute store result storage kello:value tag.component_entity.transformation.translation[1] float 1 run scoreboard players get @s kello.component.to_y
# data modify entity @s transformation.translation set from storage kello:value tag.component_entity.transformation.translation
# data merge entity @s {start_interpolation:0,interpolation_duration:8}

# execute if entity @s[tag=kello.entity.platform] summon marker run function kello:entity/decal/loading_controller/state/run/children/component/chain_platform/2_loc