scoreboard players operation #sellocal kello.entity.id = @s kello.entity.id

execute as @e[type=#kello:generic/system,tag=pr.target,tag=!pr.ignore,tag=kello.entity,tag=!kello.decal.selected] if score @s kello.entity.id = #sellocal kello.entity.id run function kello:debug/decal/util/selector/se

data modify entity @s Glowing set value 1b
execute on passengers run data modify entity @s Glowing set value 1b
tag @s add kello.decal.selected
return 1