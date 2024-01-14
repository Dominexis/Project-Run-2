# Set state

scoreboard players set #state kello.value 3





# Children reset

scoreboard players operation #local kello.decal.id = @s kello.decal.id
tag @s add kello.entity.controller.target
execute on passengers if entity @s[type=minecraft:snowball,tag=kello.decal.pointer_origin] on origin if score @s kello.decal.id = #local kello.decal.id positioned as @s run function kello:entity/decal/contraption_controller/state_optional/out/children/init
tag @s remove kello.entity.controller.target


scoreboard players set @s kello.entity.active_children 0
return 1