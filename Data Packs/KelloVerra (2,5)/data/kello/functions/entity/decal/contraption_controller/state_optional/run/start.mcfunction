# Set state

scoreboard players set #state kello.value 1



# Init

scoreboard players set @s kello.entity.timer 20





# Children reset

scoreboard players operation #local kello.decal.id = @s kello.decal.id
# execute as @e[type=#kello:generic/system,tag=pr.target,tag=!pr.ignore,tag=kello.decal.controlled,tag=kello.decal.controller.optional_contraption] if score @s kello.decal.id = #local kello.decal.id positioned as @s run function kello:entity/decal/contraption_controller/state_optional/run/children/reset/verify
execute on passengers if entity @s[type=snowball,tag=kello.decal.pointer_origin] on origin if score @s kello.decal.id = #local kello.decal.id positioned as @s run function kello:entity/decal/contraption_controller/state_optional/run/children/reset/verify



# Set thrower cogwheel variant

execute as @e[type=item_display,tag=pr.target,tag=kello.entity.type.thrown_cogwheel,tag=kello.state_case.attach,distance=..3,sort=nearest,limit=1] run function animated_java:cogwheel/apply_variant/air