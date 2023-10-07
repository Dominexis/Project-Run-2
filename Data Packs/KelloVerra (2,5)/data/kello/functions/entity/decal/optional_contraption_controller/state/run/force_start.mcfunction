# Set state

scoreboard players set #state kello.value 1



# Init

scoreboard players set @s kello.entity.timer 66





# Children reset

scoreboard players operation #local kello.decal.id = @s kello.decal.id
execute as @e[type=#kello:generic/system,tag=pr.target,tag=!pr.ignore,tag=kello.decal] if score @s kello.decal.id = #local kello.decal.id positioned as @s run function kello:entity/decal/optional_contraption_controller/state/run/children/reset/force



# Set thrower cogwheel variant

execute as @e[tag=kello.entity.type.thrown_cogwheel,tag=kello.state_case.attach,distance=..4,sort=nearest,limit=1] run function animated_java:cogwheel/apply_variant/air