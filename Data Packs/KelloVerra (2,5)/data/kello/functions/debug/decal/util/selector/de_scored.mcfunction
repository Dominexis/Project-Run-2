scoreboard players operation #sellocal kello.entity.id = @s kello.entity.id

execute as @e[type=#kello:generic/system,tag=pr.target,tag=kello.entity,tag=pr.target,tag=!kello.ignore,tag=kello.decal.selected] if score @s kello.entity.id = #sellocal kello.entity.id run function kello:debug/decal/util/selector/de

data modify entity @s Glowing set value 0b
execute on passengers run data modify entity @s Glowing set value 0b
tag @s remove kello.decal.selected