execute if score #select_score kello.value matches 1 as @e[type=#kello:generic/display,tag=pr.target,tag=kello.decal,tag=!kello.decal.selected,distance=..4,sort=nearest,limit=1] run function kello:debug/decal/util/selector/se_scored
execute if score #select_score kello.value matches 0 as @e[type=#kello:generic/display,tag=pr.target,tag=kello.decal,tag=!kello.decal.selected,distance=..4,sort=nearest,limit=1] run function kello:debug/decal/util/selector/se
execute as @e[type=marker,tag=kello.decal.spawn_point,tag=!kello.decal.spawn_point_selected,distance=..2,sort=nearest,limit=1] run function kello:debug/decal/util/selector/se_decal_spawnpoint

tp @s[tag=kello.entity.decal_selector] ~ -2000 ~