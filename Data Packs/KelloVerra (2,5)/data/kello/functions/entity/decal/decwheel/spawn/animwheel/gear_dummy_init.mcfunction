tag @s remove kello.entity.target.new
tag @s add kello.entity.type.animated_wheel
tag @s add kello.decal.mech_spawn_point
tag @s add kello.has_delay
tag @s add pr.ignore

execute on passengers run tag @s add pr.ignore

execute if score #variant kello.value matches 0 run tag @s add kello.entity.type.gear_0
execute if score #variant kello.value matches 1 run tag @s add kello.entity.type.gear_1
execute if score #variant kello.value matches 2 run tag @s add kello.entity.type.gear_2
execute if score #variant kello.value matches 3 run tag @s add kello.entity.type.gear_3
execute if score #variant kello.value matches 4 run tag @s add kello.entity.type.gear_4
execute if score #variant kello.value matches 5 run tag @s add kello.entity.type.gear_5
execute if score #variant kello.value matches 6 run tag @s add kello.entity.type.gear_6
execute if score #variant kello.value matches 7 run tag @s add kello.entity.type.gear_7
execute if score #variant kello.value matches 8 run tag @s add kello.entity.type.gear_8

scoreboard players operation @s kello.entity.variant = #variant kello.value


execute at @s on passengers run tp @s ~ ~ ~ ~ ~
execute on passengers unless entity @s[tag=aj.animwheel.bone.root] run kill @s


scoreboard players operation @s kello.entity.variant = #variant kello.value