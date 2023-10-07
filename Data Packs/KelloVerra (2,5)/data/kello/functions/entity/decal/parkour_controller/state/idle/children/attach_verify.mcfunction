function kello:entity/decal/parkour_controller/state/idle/children/attach

execute if entity @s[tag=kello.entity.type.large] unless entity @e[type=item_display,tag=pr.target,tag=!pr.ignore,tag=kello.entity.type.thrown_cogwheel,tag=kello.entity.type.large,distance=..24] run function kello:entity/thrown/large_cog/state/fixed/as_detach
execute if entity @s[tag=kello.entity.type.small] unless entity @e[type=item_display,tag=pr.target,tag=!pr.ignore,tag=kello.entity.type.thrown_cogwheel,tag=kello.entity.type.small,distance=..24] run function kello:entity/thrown/small_cog/state/fixed/as_detach

execute on passengers if entity @s[type=snowball,tag=kello.decal.pointer_controller] on origin run scoreboard players remove @s kello.entity.active_children 1
execute if entity @s[tag=kello.entity.parkour_controller_empty_in_progress] run function kello:entity/decal/parkour_controller/state/idle/children/fix_attach_empty_in_progress

execute if score @s kello.entity.active_children matches ..-1 run scoreboard players set @s kello.entity.active_children 0

tag @s remove kello.recently_attached