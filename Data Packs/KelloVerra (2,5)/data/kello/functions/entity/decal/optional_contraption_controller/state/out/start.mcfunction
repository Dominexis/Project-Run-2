# Set state

scoreboard players set @s kello.entity.state 3





# Children reset

scoreboard players operation #local kello.decal.id = @s kello.decal.id
tag @s add kello.entity.controller.target
execute as @e[type=#kello:generic/system,tag=pr.target,tag=!kello.ignore,tag=kello.decal] if score @s kello.decal.id = #local kello.decal.id positioned as @s run function kello:entity/decal/optional_contraption_controller/state/out/children/init
tag @s remove kello.entity.controller.target


scoreboard players set @s kello.entity.active_children 0