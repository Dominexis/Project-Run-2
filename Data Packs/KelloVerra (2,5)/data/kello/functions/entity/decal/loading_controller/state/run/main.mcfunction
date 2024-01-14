
scoreboard players operation #local kello.decal.id = @s kello.decal.id
scoreboard players operation #local kello.entity.timer = @s kello.entity.timer

tag @s add kello.entity.controller.target
# execute if score @s kello.entity.timer matches 1.. as @e[type=#kello:generic/decal,tag=pr.target,tag=!pr.ignore,tag=kello.decal.controlled,tag=kello.decal.controller.contraption,distance=..64] if score @s kello.decal.id = #local kello.decal.id positioned as @s run function kello:entity/decal/loading_controller/state/run/children/main
execute if score @s kello.entity.timer matches 1.. on passengers if entity @s[type=minecraft:snowball,tag=kello.decal.pointer_origin] on origin if score @s kello.decal.id = #local kello.decal.id rotated as @s positioned as @s run function kello:entity/decal/loading_controller/state/run/children/main

tag @s remove kello.entity.controller.target
return 1