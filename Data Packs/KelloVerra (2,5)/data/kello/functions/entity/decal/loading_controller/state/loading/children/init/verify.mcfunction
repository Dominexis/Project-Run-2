scoreboard players operation #local kello.decal.id = @s kello.decal.id
scoreboard players operation #local kello.entity.timer = @s kello.entity.timer

tag @s add kello.entity.controller.target
execute if entity @s[tag=kello.entity.decal_controller_loading_init] as @e[type=#kello:generic/decal,distance=..64,tag=pr.target,tag=!pr.ignore,tag=kello.decal.controlled,tag=kello.decal.controller.loading] if score @s kello.decal.id = #local kello.decal.id positioned as @s run function kello:entity/decal/loading_controller/state/loading/children/init/main
tag @s remove kello.entity.controller.target

tag @s remove kello.entity.decal_controller_loading_init
return 1