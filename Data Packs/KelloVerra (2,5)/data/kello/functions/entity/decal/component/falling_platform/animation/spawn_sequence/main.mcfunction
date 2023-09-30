scoreboard players operation #local kello.entity.id = @s kello.entity.id

execute if score @s kello.entity.timer matches 6 run function kello:entity/decal/component/falling_platform/animation/spawn_sequence/1
execute if score @s kello.entity.timer matches 5 run function kello:entity/decal/component/falling_platform/animation/spawn_sequence/2
execute if score @s kello.entity.timer matches 4 run function kello:entity/decal/component/falling_platform/animation/spawn_sequence/3
execute if score @s kello.entity.timer matches 3 run function kello:entity/decal/component/falling_platform/animation/spawn_sequence/4
execute if score @s kello.entity.timer matches 2 run function kello:entity/decal/component/falling_platform/animation/spawn_sequence/5
execute if score @s kello.entity.timer matches 1 run function kello:entity/decal/component/falling_platform/animation/spawn_sequence/end