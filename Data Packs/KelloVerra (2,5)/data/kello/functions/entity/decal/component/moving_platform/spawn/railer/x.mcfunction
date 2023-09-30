# Init

execute store result score @s kello.component.pos_1 run data get entity @s Pos[0] 100
execute store result score @s kello.component.pos_2 run data get entity @s Pos[0] 100

scoreboard players set #error kello.value 0
scoreboard players set #iter kello.value 32



# Algorithm to assume railpath

tag @s add kello.target


execute positioned ^1 ^ ^ if block ~-1 ~ ~ minecraft:stripped_warped_stem if block ~1 ~ ~ minecraft:stripped_warped_stem run function kello:entity/decal/component/moving_platform/spawn/railer/error_inbetweens
execute positioned ^1 ^ ^ if block ~-1 ~ ~ air if block ~1 ~ ~ air run function kello:entity/decal/component/moving_platform/spawn/railer/error_noblocks
execute if score #error kello.value matches 0 positioned ^1 ^ ^ if block ~01 ~ ~ minecraft:stripped_warped_stem rotated ~-90 0 if block ^1 ^ ^ minecraft:stripped_warped_stem summon marker run function kello:entity/decal/component/moving_platform/spawn/railer/init_iter
execute if score #error kello.value matches 0 positioned ^1 ^ ^ if block ~-1 ~ ~ minecraft:stripped_warped_stem rotated ~090 0 if block ^1 ^ ^ minecraft:stripped_warped_stem summon marker run function kello:entity/decal/component/moving_platform/spawn/railer/init_iter
execute if score #error kello.value matches 0 positioned ^1 ^ ^ if block ~01 ~ ~ minecraft:stripped_warped_stem rotated ~090 0 if block ^1 ^ ^ minecraft:stripped_warped_stem summon marker run function kello:entity/decal/component/moving_platform/spawn/railer/init_iter
execute if score #error kello.value matches 0 positioned ^1 ^ ^ if block ~-1 ~ ~ minecraft:stripped_warped_stem rotated ~-90 0 if block ^1 ^ ^ minecraft:stripped_warped_stem summon marker run function kello:entity/decal/component/moving_platform/spawn/railer/init_iter

execute if score #error kello.value matches 0 run function kello:entity/decal/component/moving_platform/spawn/railer/x_init