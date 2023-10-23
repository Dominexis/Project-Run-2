tp @s ^2 ^ ^
execute store result score #x kello.value run data get entity @s Pos[0] 100
tp @s ~ ~ ~
execute if score #x kello.value > @s kello.component.pos_2 run function kello:entity/decal/component/moving_platform/state/idle/invert

tag @s remove kello.was_deactivated