# Set state

scoreboard players reset @s kello.value
scoreboard players set @s kello.entity.state 1





# Children reset

scoreboard players operation #local kello.decal.id = @s kello.decal.id
tag @s add kello.entity.controller.target
# execute as @e[type=#kello:generic/system,tag=pr.target,tag=!kello.ignore,tag=kello.decal] if score @s kello.decal.id = #local kello.decal.id positioned as @s run function kello:entity/decal/parkour_controller/state/out/children/init
execute on passengers if entity @s[type=snowball,tag=kello.decal.pointer_origin] on origin if score @s kello.decal.id = #local kello.decal.id positioned as @s run function kello:entity/decal/parkour_controller/state/out/children/init
tag @s remove kello.entity.controller.target

scoreboard players set @s kello.entity.active_children 0