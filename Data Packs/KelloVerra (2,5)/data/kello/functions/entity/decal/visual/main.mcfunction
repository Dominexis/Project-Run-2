# Debug

execute if entity @s[tag=kello.decal.selected,tag=!kello.entity.type.cogwheel,tag=!kello.entity.type.cogwheel_shaft           ] run particle flame ~ ~.25 ~ ^ ^ ^10000 0.0000075 0 force @a[         tag=kello.player.operator]
execute if entity @s[tag=kello.decal.selected,tag=kello.entity.type.cogwheel       ] if score @s kello.decal.rot_mode matches 0 run particle flame ~ ~.25 ~ ^ ^ ^10000 0.000005 0 force @a[          tag=kello.player.operator]
execute if entity @s[tag=kello.decal.selected,tag=kello.entity.type.cogwheel_shaft ] if score @s kello.decal.rot_mode matches 0 run particle flame ~ ~.25 ~ ^ ^ ^10000 0.000005 0 force @a[          tag=kello.player.operator]
execute if entity @s[tag=kello.decal.selected,tag=kello.entity.type.cogwheel       ] if score @s kello.decal.rot_mode matches 1 run particle soul_fire_flame ~ ~.25 ~ ^ ^ ^10000 0.000005 0 force @a[tag=kello.player.operator]
execute if entity @s[tag=kello.decal.selected,tag=kello.entity.type.cogwheel_shaft ] if score @s kello.decal.rot_mode matches 1 run particle soul_fire_flame ~ ~.25 ~ ^ ^ ^10000 0.000005 0 force @a[tag=kello.player.operator]
execute if entity @s[tag=kello.decal                                               ] if score @s kello.decal.id = #selected kello.decal.id run particle end_rod ~ ~.25 ~ 0 0 0 0.0125 3 force @a[     tag=kello.player.operator]
execute if entity @s[tag=!kello.decal                                              ] if score @s kello.decal.id = #selected kello.decal.id run particle glow ~ ~.25 ~ 0 0 0 0.75 3 force @a[            tag=kello.player.operator]





# Main

#execute if entity @s[tag=kello.visual.ticking] run function kello:entity/decal/visual/verify