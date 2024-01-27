execute if score #select_score kello.value matches 1 as @e[type=#kello:generic/display,distance=..4,tag=kello.decal,tag=!kello.decal.unselectable,tag=!kello.decal.selected,sort=nearest,limit=1] run function kello:debug/decal/util/selector/se_scored
execute if score #select_score kello.value matches 0 as @e[type=#kello:generic/display,distance=..4,tag=kello.decal,tag=!kello.decal.unselectable,tag=!kello.decal.selected,sort=nearest,limit=1] run function kello:debug/decal/util/selector/se

tp @s[tag=kello.entity.decal_selector] ~ -2000 ~
return 1