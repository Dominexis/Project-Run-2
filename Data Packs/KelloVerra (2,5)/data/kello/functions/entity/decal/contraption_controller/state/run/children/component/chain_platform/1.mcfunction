# Push score and negative check

scoreboard players operation #math kello.value = @s kello.component.to_y
execute if score @s kello.component.to_y matches ..-1 run scoreboard players operation #math kello.value *= #-1 kello.value




# Dynamic interpolation calculation

scoreboard players operation #math1 kello.value = #math kello.value
execute if score #math1 kello.value matches 15.. run scoreboard players set #math1 kello.value 15
execute if score #math1 kello.value matches 7.. run scoreboard players remove #math1 kello.value 2
scoreboard players operation #math1 kello.value *= #125 kello.value

scoreboard players operation #math kello.value *= #1000 kello.value
scoreboard players operation #math kello.value += #math1 kello.value


# Negative check

execute if score @s kello.component.to_y matches ..-1 run scoreboard players operation #math kello.value *= #-1 kello.value





# Push to nbt

data merge storage kello:value {tag:{component_entity:{transformation:{translation:[0f,0f,0f]}}}}
execute store result storage kello:value tag.component_entity.transformation.translation[1] float 0.001 run scoreboard players get #math kello.value
data modify entity @s transformation.translation set from storage kello:value tag.component_entity.transformation.translation
data merge entity @s {start_interpolation:0,interpolation_duration:11}