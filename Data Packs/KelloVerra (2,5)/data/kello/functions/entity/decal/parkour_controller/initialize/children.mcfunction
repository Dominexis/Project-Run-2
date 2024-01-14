data modify storage kello:data tag.Owner set from entity @s UUID

tag @s add kello.decal.target
execute if entity @s[tag=kello.decal.point] as @e[type=minecraft:item_display,distance=..96,tag=kello.entity.type.decal_parkour_controller] if score @s kello.decal.id = #selected kello.decal.id positioned as @s run function kello:entity/decal/parkour_controller/initialize/as_controller
tag @s remove kello.decal.target


execute if entity @s[tag=!kello.decal.controller_children] run function kello:entity/decal/parkour_controller/state/idle/children/init
return 1