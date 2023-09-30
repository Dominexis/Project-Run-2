tag @s add kello.empty
tag @s remove kello.attach
execute if entity @s[tag=kello.attached] run scoreboard players set @s kello.entity.timer 20
function kello:entity/decal/decwheel/variant/gear_to_shaft

scoreboard players operation #local kello.decal.id = @s kello.decal.id
execute as @e[type=item_display,tag=pr.target,tag=kello.entity.type.decal_controller] if score @s kello.decal.id = #local kello.decal.id run function kello:entity/thrown/large_cog/state/fixed/as_controller_detach