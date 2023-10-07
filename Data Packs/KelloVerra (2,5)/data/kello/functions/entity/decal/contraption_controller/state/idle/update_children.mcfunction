scoreboard players operation #local kello.decal.id = @s kello.decal.id
tag @s add kello.entity.controller.target
execute as @e[type=#kello:generic/decal,tag=pr.target,tag=!pr.ignore,tag=kello.decal.controlled,tag=kello.decal.control,distance=..64] if score @s kello.decal.id = #local kello.decal.id positioned as @s run function kello:entity/decal/contraption_controller/state/idle/children/main
tag @s remove kello.entity.controller.target