
scoreboard players operation #local kello.decal.id = @s kello.decal.id
scoreboard players operation #local kello.entity.timer = @s kello.entity.timer

tag @s add kello.entity.controller.target
execute as @e[type=#kello:generic/decal,tag=pr.target,tag=!kello.ignore,tag=kello.decal.controlled,tag=kello.decal.controller.optional_contraption,distance=..64] if score @s kello.decal.id = #local kello.decal.id positioned as @s run function kello:entity/decal/optional_contraption_controller/state/inv/children/main
tag @s remove kello.entity.controller.target