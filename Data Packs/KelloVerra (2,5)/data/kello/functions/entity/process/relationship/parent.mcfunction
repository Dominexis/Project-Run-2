tag @e[type=#kello:generic/system,tag=kello.this,limit=1] add kello.entity.parent.target

scoreboard players operation #local kello.entity.id = @s kello.entity.id
execute as @e[type=#kello:generic/system,distance=..128,tag=kello.entity] if score @s kello.entity.id = #local kello.entity.id run tag @s add kello.entity.child.target
return 1