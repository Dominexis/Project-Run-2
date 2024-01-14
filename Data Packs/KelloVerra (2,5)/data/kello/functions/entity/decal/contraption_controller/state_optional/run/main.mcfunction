
scoreboard players operation #local kello.decal.id = @s kello.decal.id
scoreboard players operation #local kello.entity.timer = @s kello.entity.timer

tag @s add kello.entity.controller.target
execute if score @s kello.entity.timer matches 1.. on passengers if entity @s[type=minecraft:snowball,tag=kello.decal.pointer_origin] on origin rotated as @s positioned as @s run function kello:entity/decal/contraption_controller/state_optional/run/children/main
tag @s remove kello.entity.controller.target
return 1