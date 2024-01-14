# Target parent 

tag @s add kello.this
execute as @e[type=#kello:generic/system,distance=..128,tag=kello.entity] if score @s kello.entity.parent_id = #local kello.entity.id run function kello:entity/process/relationship/parent
tag @s remove kello.this




# Target children

scoreboard players operation #local kello.entity.parent_id = @s kello.entity.parent_id
execute unless score #local kello.entity.parent_id matches 0 as @e[type=#kello:generic/system,distance=..128,tag=kello.entity] if score @s kello.entity.id = #local kello.entity.parent_id run function kello:entity/process/relationship/child
return 1