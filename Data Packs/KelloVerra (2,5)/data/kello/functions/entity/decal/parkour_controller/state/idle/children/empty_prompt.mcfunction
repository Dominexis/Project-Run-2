scoreboard players operation #local kello.entity.id = @s kello.entity.id
scoreboard players operation #local kello.decal.id = @s kello.decal.id
execute as @e[type=#kello:generic/system,distance=..64,tag=pr.target,tag=!pr.ignore,tag=kello.decal.controlled] if score @s kello.decal.id = #local kello.decal.id if score @s kello.entity.id = #local kello.entity.id run function kello:entity/decal/parkour_controller/state/idle/children/empty_anim
return 1