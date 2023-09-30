execute store result score #x kello.value run data get entity @s Pos[0]
execute store result score #y kello.value run data get entity @s Pos[1]
execute store result score #z kello.value run data get entity @s Pos[2]
execute store result score #rot_0 kello.value run data get entity @s Rotation[0]
execute store result score #rot_1 kello.value run data get entity @s Rotation[1]

scoreboard players add #x kello.value 32768
scoreboard players add #z kello.value 32768
scoreboard players operation #x kello.value %= #65536 pr.value
scoreboard players operation #z kello.value %= #65536 pr.value
scoreboard players remove #x kello.value 32768
scoreboard players remove #z kello.value 32768
scoreboard players add #x kello.value 8
scoreboard players add #z kello.value 8
scoreboard players operation #x kello.value %= #96 pr.value
scoreboard players operation #z kello.value %= #96 pr.value
scoreboard players remove #x kello.value 48
scoreboard players remove #z kello.value 48

execute if entity @s[tag=kello.decal.type.melloflora_lantern_short] run data modify storage kello:data tag.decal_identifier set value "kello.decal.type.melloflora_lantern_short"
execute if entity @s[tag=kello.decal.type.melloflora_lantern_medium] run data modify storage kello:data tag.decal_identifier set value "kello.decal.type.melloflora_lantern_medium"
execute if entity @s[tag=kello.decal.type.melloflora_lantern_large] run data modify storage kello:data tag.decal_identifier set value "kello.decal.type.melloflora_lantern_large"

execute if entity @s[tag=kello.decal.type.wall_mellolily_small] run data modify storage kello:data tag.decal_identifier set value "kello.decal.type.wall_mellolily_small"
execute if entity @s[tag=kello.decal.type.wall_mellolily_medium] run data modify storage kello:data tag.decal_identifier set value "kello.decal.type.wall_mellolily_medium"
execute if entity @s[tag=kello.decal.type.wall_mellolily_large] run data modify storage kello:data tag.decal_identifier set value "kello.decal.type.wall_mellolily_large"

execute if entity @s[tag=kello.decal.type.mellolily_pot_0] run data modify storage kello:data tag.decal_identifier set value "kello.decal.type.mellolily_pot_0"
execute if entity @s[tag=kello.decal.type.mellolily_pot_1] run data modify storage kello:data tag.decal_identifier set value "kello.decal.type.mellolily_pot_1"

execute if entity @s[tag=kello.decal.type.melloleta_patch] run data modify storage kello:data tag.decal_identifier set value "kello.decal.type.melloleta_patch"
execute if entity @s[tag=kello.decal.type.melloleta_path] run data modify storage kello:data tag.decal_identifier set value "kello.decal.type.melloleta_path"

execute if entity @s[tag=kello.decal.type.mellorainn_patch] run data modify storage kello:data tag.decal_identifier set value "kello.decal.type.mellorainn_patch"
execute if entity @s[tag=kello.decal.type.mellorainn_cluster] run data modify storage kello:data tag.decal_identifier set value "kello.decal.type.mellorainn_cluster"

execute if entity @s[tag=kello.decal.type.comet_small] run data modify storage kello:data tag.decal_identifier set value "kello.decal.type.comet_small"
execute if entity @s[tag=kello.decal.type.comet_medium] run data modify storage kello:data tag.decal_identifier set value "kello.decal.type.comet_medium"
execute if entity @s[tag=kello.decal.type.comet_large] run data modify storage kello:data tag.decal_identifier set value "kello.decal.type.comet_large"
execute if entity @s[tag=kello.decal.type.comet_large] run data modify storage kello:data tag.decal_identifier set value "kello.decal.type.comet_large"

execute if entity @s[tag=kello.decal.type.large_cogwheel_display] run data modify storage kello:data tag.decal_identifier set value "kello.decal.type.large_cogwheel_display"
execute if entity @s[tag=kello.decal.type.small_cogwheel_display] run data modify storage kello:data tag.decal_identifier set value "kello.decal.type.small_cogwheel_display"

tellraw @a ["",{"nbt":"tag.decal_identifier","storage":"kello:data"}," positioned ~",{"score":{"name":"#x","objective":"kello.value"},"color":"gold"}," ~",{"score":{"name":"#y","objective":"kello.value"},"color":"gold"}," ~",{"score":{"name":"#z","objective":"kello.value"},"color":"gold"}," Rotation:[",{"score":{"name":"#rot_0","objective":"kello.value"},"color":"gold"},".0f,",{"score":{"name":"#rot_1","objective":"kello.value"},"color":"gold"},".0f]"]