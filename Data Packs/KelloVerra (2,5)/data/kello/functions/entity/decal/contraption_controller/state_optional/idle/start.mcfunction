# Set state

scoreboard players set #state kello.value 0





# Children reset

scoreboard players operation #local kello.decal.id = @s kello.decal.id
execute as @e[type=#kello:generic/system,tag=pr.target,tag=!pr.ignore,tag=kello.decal.controlled] if score @s kello.decal.id = #local kello.decal.id positioned as @s run function kello:entity/decal/contraption_controller/state_optional/idle/children/init/main
tag @s add kello.entity.decal_controller_idle_init
return 1