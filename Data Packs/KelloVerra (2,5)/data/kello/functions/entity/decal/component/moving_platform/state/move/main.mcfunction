scoreboard players operation #local kello.decal.state = @s kello.decal.state

scoreboard players remove @s[scores={kello.entity.timer=0..}] kello.entity.timer 1
execute if score @s kello.entity.timer matches 0 run function kello:entity/decal/component/moving_platform/animation/moving_momentum


execute if entity @s[tag=kello.entity.type.z] rotated as @s run function kello:entity/decal/component/moving_platform/state/move/z/main
execute if entity @s[tag=kello.entity.type.x] rotated as @s run function kello:entity/decal/component/moving_platform/state/move/x/main