# Spawn marker entity

execute anchored eyes run summon marker ^ ^ ^ {Tags:["pr.entity","pr.player.launch"]}








# Compute force from creeper explosions

scoreboard players set #creeper_power pr.value 1810
execute at @e[type=marker,tag=pr.player.launch,distance=..4,limit=1] if entity @s[distance=..1.28] run scoreboard players set #creeper_power pr.value 1635
execute at @e[type=marker,tag=pr.player.launch,distance=..4,limit=1] if entity @s[distance=..0.41] run scoreboard players set #creeper_power pr.value 1200

scoreboard players operation #math_00 pr.value = #creeper_power pr.value
scoreboard players operation #math_00 pr.value *= #2 pr.value
scoreboard players operation #creeper_count pr.value = #motion_vector_magnitude pr.value
scoreboard players operation #creeper_count pr.value /= #math_00 pr.value
scoreboard players add #creeper_count pr.value 1







# Compute creeper vectors

scoreboard players operation #math_00 pr.value *= #creeper_count pr.value
scoreboard players operation #math_cosine pr.value = #motion_vector_magnitude pr.value
scoreboard players operation #math_cosine pr.value *= #1000 pr.value
scoreboard players operation #math_cosine pr.value /= #math_00 pr.value

scoreboard players operation #input pr.value = #math_cosine pr.value
scoreboard players operation #input pr.value *= #math_cosine pr.value
scoreboard players operation #input pr.value *= #-1 pr.value
scoreboard players add #input pr.value 1000000
function pr:generic/sqrt
scoreboard players operation #math_sine pr.value = #output pr.value



scoreboard players operation #math_00 pr.value = #math_sine pr.value
scoreboard players operation #math_00 pr.value *= #motion_vector_y pr.value
scoreboard players operation #creeper_1_hor pr.value = #math_cosine pr.value
scoreboard players operation #creeper_1_hor pr.value *= #horizontal_magnitude pr.value
scoreboard players operation #creeper_1_hor pr.value -= #math_00 pr.value
scoreboard players operation #creeper_1_hor pr.value /= #1000 pr.value

scoreboard players operation #math_00 pr.value = #math_cosine pr.value
scoreboard players operation #math_00 pr.value *= #motion_vector_y pr.value
scoreboard players operation #creeper_1_y pr.value = #math_sine pr.value
scoreboard players operation #creeper_1_y pr.value *= #horizontal_magnitude pr.value
scoreboard players operation #creeper_1_y pr.value += #math_00 pr.value
scoreboard players operation #creeper_1_y pr.value /= #1000 pr.value

scoreboard players operation #math_00 pr.value = #math_sine pr.value
scoreboard players operation #math_00 pr.value *= #motion_vector_y pr.value
scoreboard players operation #creeper_2_hor pr.value = #math_cosine pr.value
scoreboard players operation #creeper_2_hor pr.value *= #horizontal_magnitude pr.value
scoreboard players operation #creeper_2_hor pr.value += #math_00 pr.value
scoreboard players operation #creeper_2_hor pr.value /= #1000 pr.value

scoreboard players operation #math_00 pr.value = #math_cosine pr.value
scoreboard players operation #math_00 pr.value *= #motion_vector_y pr.value
scoreboard players operation #creeper_2_y pr.value = #math_sine pr.value
scoreboard players operation #creeper_2_y pr.value *= #horizontal_magnitude pr.value
scoreboard players operation #creeper_2_y pr.value *= #-1 pr.value
scoreboard players operation #creeper_2_y pr.value += #math_00 pr.value
scoreboard players operation #creeper_2_y pr.value /= #1000 pr.value



scoreboard players operation #creeper_1_x pr.value = #horizontal_x pr.value
scoreboard players operation #creeper_1_x pr.value *= #creeper_1_hor pr.value
scoreboard players operation #creeper_1_x pr.value /= #1000 pr.value

scoreboard players operation #creeper_1_z pr.value = #horizontal_z pr.value
scoreboard players operation #creeper_1_z pr.value *= #creeper_1_hor pr.value
scoreboard players operation #creeper_1_z pr.value /= #1000 pr.value

scoreboard players operation #creeper_2_x pr.value = #horizontal_x pr.value
scoreboard players operation #creeper_2_x pr.value *= #creeper_2_hor pr.value
scoreboard players operation #creeper_2_x pr.value /= #1000 pr.value

scoreboard players operation #creeper_2_z pr.value = #horizontal_z pr.value
scoreboard players operation #creeper_2_z pr.value *= #creeper_2_hor pr.value
scoreboard players operation #creeper_2_z pr.value /= #1000 pr.value



scoreboard players operation #creeper_1_x pr.value *= #-1 pr.value
scoreboard players operation #creeper_1_y pr.value *= #-1 pr.value
scoreboard players operation #creeper_1_z pr.value *= #-1 pr.value

scoreboard players operation #creeper_2_x pr.value *= #-1 pr.value
scoreboard players operation #creeper_2_y pr.value *= #-1 pr.value
scoreboard players operation #creeper_2_z pr.value *= #-1 pr.value







# Spawn entities

data modify storage pr:data tag.Owner set value [I;0,0,0,0]
execute store result storage pr:data tag.Owner[0] int 1 run scoreboard players get @s pr.uuid_0
execute store result storage pr:data tag.Owner[1] int 1 run scoreboard players get @s pr.uuid_1
execute store result storage pr:data tag.Owner[2] int 1 run scoreboard players get @s pr.uuid_2
execute store result storage pr:data tag.Owner[3] int 1 run scoreboard players get @s pr.uuid_3

summon area_effect_cloud ~ ~ ~ {Tags:["pr.launch"],WaitTime:0,Duration:1,Age:-1,Radius:0.0f,ReapplicationDelay:-1,Effects:[{Id:7,Amplifier:0b,Duration:1}]}
execute as @e[type=area_effect_cloud,tag=pr.launch,distance=..1,limit=1] run function pr:player/launch/owner/pre



scoreboard players operation #local pr.id = @s pr.id
execute as @e[type=marker,tag=pr.player.launch,distance=..4,limit=1] run function pr:player/launch/spawn/main



data modify storage pr:data tag.Owner set value [I;0,0,0,0]
execute store result storage pr:data tag.Owner[0] int 1 run scoreboard players get @s pr.uuid_0
execute store result storage pr:data tag.Owner[1] int 1 run scoreboard players get @s pr.uuid_1
execute store result storage pr:data tag.Owner[2] int 1 run scoreboard players get @s pr.uuid_2
execute store result storage pr:data tag.Owner[3] int 1 run scoreboard players get @s pr.uuid_3

summon area_effect_cloud ~ ~ ~ {Tags:["pr.launch"],WaitTime:0,Duration:1,Age:-1,Radius:0.0f,ReapplicationDelay:-1,Effects:[{Id:7,Amplifier:0b,Duration:1}]}
execute as @e[type=area_effect_cloud,tag=pr.launch,distance=..1,limit=1] run function pr:player/launch/owner/post