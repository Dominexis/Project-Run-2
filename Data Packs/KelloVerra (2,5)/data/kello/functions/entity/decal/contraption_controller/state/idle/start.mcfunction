# Set state

scoreboard players set #state kello.value 0






# Children reset

scoreboard players operation #local kello.decal.id = @s kello.decal.id
# execute as @e[type=#kello:generic/system,tag=pr.target,tag=!pr.ignore,tag=kello.decal.controlled] if score @s kello.decal.id = #local kello.decal.id positioned as @s run function kello:entity/decal/contraption_controller/state/idle/children/reset

tag @s add kello.entity.controller.target
# execute as @e[type=#kello:generic/system,tag=pr.target,tag=!pr.ignore,tag=kello.decal] if score @s kello.decal.id = #local kello.decal.id positioned as @s run function kello:entity/decal/contraption_controller/state/out/children/init
execute on passengers if entity @s[type=minecraft:snowball,tag=kello.decal.pointer_origin] on origin if score @s kello.decal.id = #local kello.decal.id positioned as @s run function kello:entity/decal/contraption_controller/state/idle/children/init/main
tag @s remove kello.entity.controller.target

tag @s add kello.entity.decal_controller_idle_init
return 1