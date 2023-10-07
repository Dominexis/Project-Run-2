# Set state

scoreboard players set #state kello.value 2




# Init

scoreboard players set @s kello.entity.timer 20






# Children reset

scoreboard players operation #local kello.decal.id = @s kello.decal.id
execute as @e[type=#kello:generic/system,tag=pr.target,tag=!pr.ignore,tag=kello.decal.controlled] if score @s kello.decal.id = #local kello.decal.id positioned as @s run function kello:entity/decal/contraption_controller/state_optional/inv/children/reset