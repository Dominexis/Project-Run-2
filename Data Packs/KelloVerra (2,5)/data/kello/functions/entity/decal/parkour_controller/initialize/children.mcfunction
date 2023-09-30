data modify storage kello:data tag.Owner set from entity @s UUID

tag @s add kello.decal.target
execute if entity @s[tag=kello.decal.point] as @e[type=item_display,tag=kello.entity.type.decal_parkour_controller,distance=..96] if score @s kello.decal.id = #selected kello.decal.id positioned as @s run function kello:entity/decal/parkour_controller/initialize/as_controller
tag @s remove kello.decal.target


execute if entity @s[tag=!kello.decal.controller_children] run function kello:entity/decal/parkour_controller/state/idle/children/init