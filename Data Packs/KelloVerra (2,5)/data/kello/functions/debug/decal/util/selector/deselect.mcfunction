execute if score #select_score kello.value matches 1 as @e[type=#kello:generic/display,tag=pr.target,tag=kello.decal,tag=pr.target,tag=kello.decal.selected,distance=..4,sort=nearest,limit=1] run function kello:debug/decal/util/selector/de_scored
execute if score #select_score kello.value matches 0 as @e[type=#kello:generic/display,tag=pr.target,tag=kello.decal,tag=pr.target,tag=kello.decal.selected,distance=..4,sort=nearest,limit=1] run function kello:debug/decal/util/selector/de
execute as @e[type=marker,tag=kello.decal.spawn_point,tag=kello.decal.spawn_point_selected,distance=..2,sort=nearest,limit=1] run function kello:debug/decal/util/selector/de_decal_spawnpoint

tp @s[tag=kello.entity.decal_deselector] ~ -2000 ~