tp @s ^ ^ ^2
execute store result score #z kello.value run data get entity @s Pos[2] 100
tp @s ^ ^ ^-2
execute if score #z kello.value > @s kello.component.pos_2 rotated as @s run function kello:entity/decal/component/moving_platform/state/idle/invert

tag @s remove kello.was_deactivated