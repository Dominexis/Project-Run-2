function kello:entity/decal/component/moving_platform/state/move/z/move

execute if score #z kello.value < @s kello.component.pos_1 run function kello:entity/decal/component/moving_platform/state/move/invert
execute if score #z kello.value > @s kello.component.pos_2 run function kello:entity/decal/component/moving_platform/state/move/invert
return 1