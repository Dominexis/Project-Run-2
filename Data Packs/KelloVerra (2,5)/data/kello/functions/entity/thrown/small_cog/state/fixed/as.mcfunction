tag @s remove kello.empty
tag @s add kello.attach
tag @s add kello.recently_attached

tp @e[type=minecraft:item_display,tag=pr.target,tag=kello.fixed.target] ~ ~.25 ~
function kello:entity/decal/decwheel/variant/shaft_to_gear
scoreboard players operation #local kello.decal.id = @s kello.decal.id
scoreboard players operation #local kello.entity.id = @s kello.entity.id
execute as @e[type=minecraft:item_display,distance=...1,tag=pr.target,tag=!pr.ignore,tag=kello.entity.type.groundicator,tag=kello.entity.type.small,sort=nearest] run tag @s add kello.dead
execute if entity @s[tag=kello.decal.controller.parkour] positioned ~ ~.05 ~ run function kello:entity/groundicator/small/spawn/main
execute if entity @s[tag=kello.decal.controller.parkour] run scoreboard players set @e[type=minecraft:item_display,tag=pr.target,tag=kello.fixed.target] kello.decal.timer 0

execute as @e[type=minecraft:item_display,tag=pr.target,tag=kello.entity.type.decal_controller] if score @s kello.decal.id = #local kello.decal.id run function kello:entity/thrown/small_cog/state/fixed/as_controller
return 1