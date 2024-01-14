execute if score #select_score kello.value matches 1 as @e[type=#kello:generic/display,distance=..4,tag=kello.decal,tag=kello.decal.selected,sort=nearest,limit=1] run function kello:debug/decal/util/selector/de_scored
execute if score #select_score kello.value matches 0 as @e[type=#kello:generic/display,distance=..4,tag=kello.decal,tag=kello.decal.selected,sort=nearest,limit=1] run function kello:debug/decal/util/selector/de
execute as @e[type=minecraft:marker,distance=..2,tag=kello.decal.spawn_point,tag=kello.decal.spawn_point_selected,sort=nearest,limit=1] run function kello:debug/decal/util/selector/de_decal_spawnpoint

tp @s[tag=kello.entity.decal_deselector] ~ -2000 ~
return 1