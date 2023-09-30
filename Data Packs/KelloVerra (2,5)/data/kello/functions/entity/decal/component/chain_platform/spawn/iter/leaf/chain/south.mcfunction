data modify entity @s item.tag.CustomModelData set value 351921
tp @s ~ ~ ~.225
execute if block ~-1 ~-1 ~ barrier run data modify entity @s item.tag.CustomModelData set value 351908
execute if block ~-1 ~-1 ~ barrier positioned as @s run tp @s ~-.5 ~ ~
execute if block ~1 ~-1 ~ barrier run data modify entity @s item.tag.CustomModelData set value 351908
execute if block ~1 ~-1 ~ barrier positioned as @s run tp @s ~.5 ~ ~
execute if block ~1 ~-1 ~ barrier if block ~-1 ~-1 ~ barrier run data modify entity @s item.tag.CustomModelData set value 351922
execute store result score #pos_x kello.value run data get entity @s Pos[0] 1000
execute store result score #pos_z kello.value run data get entity @s Pos[2] 1000
function kello:entity/decal/component/chain_platform/spawn/iter/leaf/chain/iter_s