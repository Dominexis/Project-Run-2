scoreboard players operation #spawn_local kello.entity.checkpoint.id = @s kello.entity.checkpoint.id

data modify storage kello:data tag.Owner_0 set from entity @s UUID

tag @s add kello.target.checkpoint
execute summon snowball run function kello:entity/checkpoint/spawn/point_summon
execute summon snowball run function kello:entity/checkpoint/spawn/point_mark_summon
tag @s remove kello.target.checkpoint