# scoreboard players operation #spawn_local kello.entity.id = @s kello.entity.id
scoreboard players operation #spawn_local kello.entity.checkpoint.id = @s kello.entity.checkpoint.id

tag @s add kello.target.checkpoint
execute summon snowball run function kello:entity/checkpoint/spawn/point_summon
tag @s remove kello.target.checkpoint



# NOTE: DEBUG
particle flame ~ ~ ~ 0 0 0 0.01 8 force @p