execute if entity @s[tag=kello.entity.type.small] run function kello:entity/decal/parkour_controller/state/idle/children/attach_small
execute if entity @s[tag=kello.entity.type.large] run function kello:entity/decal/parkour_controller/state/idle/children/attach_large

scoreboard players operation #local kello.entity.id = @s kello.entity.id
scoreboard players operation #local kello.decal.id = @s kello.decal.id

execute as @e[type=#kello:generic/system,tag=pr.target,tag=!pr.ignore,tag=kello.decal.controlled,tag=kello.decal.controller.parkour,distance=..64] if score @s kello.decal.id = #local kello.decal.id if score @s kello.entity.id = #local kello.entity.id at @s run function kello:entity/decal/parkour_controller/state/idle/children/attach_anim


tag @s add kello.attached
tag @s remove kello.emptied