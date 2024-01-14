tag @s remove kello.target

function kello:entity/decal/component/moving_platform/spawn/railer/score
scoreboard players set @s kello.decal.state 1
tag @s add kello.entity.type.x
tag @s add kello.was_deactivated

scoreboard players operation @s kello.component.pos_2 = #x kello.component.pos_2
execute if score @s kello.component.pos_2 < @s kello.component.pos_1 run scoreboard players operation @s kello.component.pos_2 >< @s kello.component.pos_1

tag @s add kello.parent_target
execute align xyz positioned ~.5 ~-7.995 ~.5 rotated ~90 0 run function kello:entity/decal/component/moving_platform/spawn/dangle_main
tag @s remove kello.parent_target
return 1