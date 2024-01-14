# TODO: Unused for now
#execute if score @s kello.decal.shafts_activated matches 1.. run function kello:entity/decal/loading_controller/state/loading/update_children

#execute if entity @s[tag=kello.entity.decal_controller_loading_init] run function kello:entity/decal/loading_controller/state/loading/children/init/verify
return 1