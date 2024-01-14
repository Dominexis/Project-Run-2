data modify storage kello:data tag.decal.notify.data.Pos set from entity @s Pos
data modify storage kello:data tag.decal.notify.data.Rotation set from entity @s Rotation

execute store result score #x kello.value run data get storage kello:data tag.decal.notify.data.Pos[0]
execute store result score #y kello.value run data get storage kello:data tag.decal.notify.data.Pos[1]
execute store result score #z kello.value run data get storage kello:data tag.decal.notify.data.Pos[2]
execute store result score #rot_0 kello.value run data get storage kello:data tag.decal.notify.data.Rotation[0]
execute store result score #rot_1 kello.value run data get storage kello:data tag.decal.notify.data.Rotation[1]

scoreboard players operation #x_math kello.value = #x kello.value
scoreboard players operation #y_math kello.value = #y kello.value
scoreboard players operation #z_math kello.value = #z kello.value

scoreboard players add #x_math kello.value 32768
scoreboard players add #z_math kello.value 32768
scoreboard players operation #x_math kello.value %= #65536 pr.value
scoreboard players operation #z_math kello.value %= #65536 pr.value
scoreboard players remove #x_math kello.value 32768
scoreboard players remove #z_math kello.value 32768
scoreboard players add #x_math kello.value 8
scoreboard players add #z_math kello.value 8
scoreboard players operation #x_math kello.value %= #96 pr.value
scoreboard players operation #z_math kello.value %= #96 pr.value
scoreboard players remove #x_math kello.value 48
scoreboard players remove #z_math kello.value 48

# number behind comma = round(input * 100) - (round(input)*100)
execute store result score #x_alt_a kello.value run data get storage kello:data tag.decal.notify.data.Pos[0] 100
execute store result score #x_alt_b kello.value run data get storage kello:data tag.decal.notify.data.Pos[0] 1
scoreboard players operation #x_alt_b kello.value *= #100 kello.value
scoreboard players operation #x_alt_c kello.value = #x_alt_a kello.value
scoreboard players operation #x_alt_c kello.value -= #x_alt_b kello.value
scoreboard players operation #x_math kello.value *= #100 kello.value
scoreboard players operation #x_math kello.value += #x_alt_c kello.value

execute store result score #y_alt_a kello.value run data get storage kello:data tag.decal.notify.data.Pos[1] 100
execute store result score #y_alt_b kello.value run data get storage kello:data tag.decal.notify.data.Pos[1] 1
scoreboard players operation #y_alt_b kello.value *= #100 kello.value
scoreboard players operation #y_alt_c kello.value = #y_alt_a kello.value
scoreboard players operation #y_alt_c kello.value -= #y_alt_b kello.value
scoreboard players operation #y_math kello.value *= #100 kello.value
scoreboard players operation #y_math kello.value += #y_alt_c kello.value

execute store result score #z_alt_a kello.value run data get storage kello:data tag.decal.notify.data.Pos[2] 100
execute store result score #z_alt_b kello.value run data get storage kello:data tag.decal.notify.data.Pos[2] 1
scoreboard players operation #z_alt_b kello.value *= #100 kello.value
scoreboard players operation #z_alt_c kello.value = #z_alt_a kello.value
scoreboard players operation #z_alt_c kello.value -= #z_alt_b kello.value
scoreboard players operation #z_math kello.value *= #100 kello.value
scoreboard players operation #z_math kello.value += #z_alt_c kello.value

data merge storage kello:data {tag:{decal:{notify:{data:{Pos_local:[0.0f,0.0f,0.0f]}}}}}
execute store result storage kello:data tag.decal.notify.data.Pos_local[0] float 0.01 run scoreboard players get #x_math kello.value
execute store result storage kello:data tag.decal.notify.data.Pos_local[1] float 0.01 run scoreboard players get #y_math kello.value
execute store result storage kello:data tag.decal.notify.data.Pos_local[2] float 0.01 run scoreboard players get #z_math kello.value


scoreboard players operation #decal_variant kello.value = @s kello.entity.variant


# execute if entity @s[tag=kello.decal.type.melloflora_lantern_short] run data modify storage kello:data tag.decal_identifier set value "kello.decal.type.melloflora_lantern_short"
# execute if entity @s[tag=kello.decal.type.melloflora_lantern_medium] run data modify storage kello:data tag.decal_identifier set value "kello.decal.type.melloflora_lantern_medium"
# execute if entity @s[tag=kello.decal.type.melloflora_lantern_large] run data modify storage kello:data tag.decal_identifier set value "kello.decal.type.melloflora_lantern_large"

# execute if entity @s[tag=kello.decal.type.wall_mellolily_small] run data modify storage kello:data tag.decal_identifier set value "kello.decal.type.wall_mellolily_small"
# execute if entity @s[tag=kello.decal.type.wall_mellolily_medium] run data modify storage kello:data tag.decal_identifier set value "kello.decal.type.wall_mellolily_medium"
# execute if entity @s[tag=kello.decal.type.wall_mellolily_large] run data modify storage kello:data tag.decal_identifier set value "kello.decal.type.wall_mellolily_large"

# execute if entity @s[tag=kello.decal.type.mellolily_pot_0] run data modify storage kello:data tag.decal_identifier set value "kello.decal.type.mellolily_pot_0"
# execute if entity @s[tag=kello.decal.type.mellolily_pot_1] run data modify storage kello:data tag.decal_identifier set value "kello.decal.type.mellolily_pot_1"

# execute if entity @s[tag=kello.decal.type.melloleta_patch] run data modify storage kello:data tag.decal_identifier set value "kello.decal.type.melloleta_patch"
# execute if entity @s[tag=kello.decal.type.melloleta_path] run data modify storage kello:data tag.decal_identifier set value "kello.decal.type.melloleta_path"

# execute if entity @s[tag=kello.decal.type.mellorainn_patch] run data modify storage kello:data tag.decal_identifier set value "kello.decal.type.mellorainn_patch"
# execute if entity @s[tag=kello.decal.type.mellorainn_cluster] run data modify storage kello:data tag.decal_identifier set value "kello.decal.type.mellorainn_cluster"

# execute if entity @s[tag=kello.decal.type.comet_small] run data modify storage kello:data tag.decal_identifier set value "kello.decal.type.comet_small"
# execute if entity @s[tag=kello.decal.type.comet_medium] run data modify storage kello:data tag.decal_identifier set value "kello.decal.type.comet_medium"
# execute if entity @s[tag=kello.decal.type.comet_large] run data modify storage kello:data tag.decal_identifier set value "kello.decal.type.comet_large"
# execute if entity @s[tag=kello.decal.type.comet_large] run data modify storage kello:data tag.decal_identifier set value "kello.decal.type.comet_large"

# execute if entity @s[tag=kello.decal.type.large_cogwheel_display] run data modify storage kello:data tag.decal_identifier set value "kello.decal.type.large_cogwheel_display"
# execute if entity @s[tag=kello.decal.type.small_cogwheel_display] run data modify storage kello:data tag.decal_identifier set value "kello.decal.type.small_cogwheel_display"



data modify storage kello:data tag.decal_identifier set from entity @s Tags

tellraw @a ["","execute positioned ~",{"color":"gold","bold":true,"nbt":"tag.decal.notify.data.Pos_local[0]","storage":"kello:data","source":"storage","type":"nbt"}," ~",{"color":"gold","bold":true,"nbt":"tag.decal.notify.data.Pos_local[1]","storage":"kello:data","source":"storage","type":"nbt"}," ~",{"color":"gold","bold":true,"nbt":"tag.decal.notify.data.Pos_local[2]","storage":"kello:data","source":"storage","type":"nbt"}," run summon marker ~ ~ ~ {Tags:",{"nbt":"tag.decal_identifier","storage":"kello:data","source":"storage","type":"nbt"},",data:{variant:",{"score":{"name":"#decal_variant","objective":"kello.value"},"type":"score"},"},","Rotation:[",{"score":{"name":"#rot_0","objective":"kello.value"},"type":"score"},".0f,",{"score":{"name":"#rot_1","objective":"kello.value"},"type":"score"},".0f]}"]
return 1