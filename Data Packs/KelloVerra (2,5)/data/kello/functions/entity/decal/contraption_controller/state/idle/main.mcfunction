# TODO: Unused for now
#execute if score @s kello.decal.shafts_activated matches 1.. run function kello:entity/decal/contraption_controller/state/idle/update_children

#execute if entity @s[tag=kello.entity.decal_controller_idle_init] run function kello:entity/decal/contraption_controller/state/idle/children/init/verify